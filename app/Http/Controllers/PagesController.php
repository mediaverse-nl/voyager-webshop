<?php

namespace App\Http\Controllers;

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
    public function show($slug)
    {
        $page = $this->pages->findBySlug($slug);

        return view('page.show')
            ->with([
                'pages' => $page,
            ]);
    }
}
