<footer id="footer" class="page-footer font-small stylish-color-dark pt-4 mt-4">

    <div class="container">
        <div class="row text-center text-xs-center text-sm-left text-md-left">
            <div class="col-xs-12 col-sm-4 col-md-4">
                <h5>Service</h5>
                <ul class="list-unstyled quick-links">
                    <li><a href="{{route('page.show', ['klantenservice', 'algemene-voorwaarden'])}}"><i class="fa fa-angle-double-right"></i>Algemene voorwaarden</a></li>
                    <li><a href="{{route('page.show', ['klantenservice', 'privacy-en-cookiebeleid'])}}"><i class="fa fa-angle-double-right"></i>Privacy Policy</a></li>
                    <li><a href="{{route('page.show', ['klantenservice', 'garantie'])}}"><i class="fa fa-angle-double-right"></i>Garantie</a></li>
                    <li><a href="{{route('page.show', ['klantenservice', 'faq'])}}"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
                </ul>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-4">
                <h5>Verzendingen & bestellen</h5>
                <ul class="list-unstyled quick-links">
                    <li><a href="{{route('page.show', ['klantenservice', 'verzenden-ontvangen'])}}"><i class="fa fa-angle-double-right"></i>Verzenden & ontvangen</a></li>
                    <li><a href="{{route('page.show', ['klantenservice', 'retourneren'])}}"><i class="fa fa-angle-double-right"></i>Retourneren</a></li>
                    <li><a href="{{route('page.show', ['klantenservice', 'bestellen'])}}"><i class="fa fa-angle-double-right"></i>Bestellen</a></li>
                </ul>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-4">
                <h5>Bedrijf</h5>
                <ul class="list-unstyled quick-links">
                    <li><a href="{{route('page.show', ['contact'])}}"><i class="fa fa-angle-double-right"></i>Contact</a></li>
                    <li><a href="{{route('page.show', ['over-ons'])}}"><i class="fa fa-angle-double-right"></i>Over Ons</a></li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
                <ul class="list-unstyled list-inline social text-center">
                    <li class="list-inline-item"><a href="{!! setting('social-media.social_media_facebook') !!}"><i class="fa fa-facebook"></i></a></li>
                    <li class="list-inline-item"><a href="{!! setting('social-media.social_media_twitter') !!}"><i class="fa fa-twitter"></i></a></li>
                    <li class="list-inline-item"><a href="{!! setting('social-media.social_media_instagram') !!}"><i class="fa fa-instagram"></i></a></li>
                    <li class="list-inline-item"><a href="{!! setting('social-media.social_media_google') !!}"><i class="fa fa-google-plus"></i></a></li>
                    <li class="list-inline-item"><a href="{!! setting('social-media.social_media_email') !!}" target="_blank"><i class="fa fa-envelope"></i></a></li>
                </ul>
            </div>
            </hr>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
                <p>small tekst</p>
                <p class="h6">&copy All right Reversed.<a class="text-green ml-2" href="https://www.mediaverse.nl" target="_blank">Mediaverse.nl</a></p>
            </div>
            </hr>
        </div>
    </div>

</footer>