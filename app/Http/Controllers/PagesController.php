<?php

namespace App\Http\Controllers;

use App\Faq;
use App\Page;
use Illuminate\Http\Request;

class PagesController extends Controller
{
    protected $pages;

    public function __construct(Page $page)
    {
        $this->pages = $page;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug, $slug2 = '')
    {
        $slug = $slug.(empty($slug2)? null : '/'.$slug2);

        $page = $this->pages->findBySlug($slug);
        $lastSlug = explode('/', $slug);

        $model = null;

        switch (end($lastSlug)){
                case 'contact': $template = 'page.contact';
            break;
                case 'faq':
                    $faq = new Faq();
                    $model = $faq->get();
                    $template = 'page.faq';
            break;
                case 'over-ons': $template = 'page.about';
            break;
                case 'algemene-voorwaarden': $template = 'page.terms';
            break;

            default: $template = 'page.show';
        }

        return view($template)
            ->with([
                'pages' => $page,
                'model' => $model,
            ]);
    }
}
