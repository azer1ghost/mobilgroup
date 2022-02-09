<div class="vh-100" style="background-size: cover; background-image: url({{asset('assets/images/contact.jpg')}})" id="contact">
    <div class="container">
        <div class="row align-items-center vh-100">
            <div class="col-md-6" style="color: black">
                <h1  style="border-bottom: 12px solid #99cd07;display: inline-block">@lang('translates.contact')</h1>
                <div>
                    <h5>@lang('translates.main_office')</h5>
                    <p>{{setting('site.address')}}</p>
                    <p>@lang('translates.call_center'):<a class="text-decoration-none link-secondary" href="tel:{{setting('site.short_phone')}}">{{setting('site.short_phone')}}</a>
                    </p>
                    <p>Tel:<a class="text-decoration-none link-secondary" href="tel:{{setting('site.intercity_phone')}}">{{setting('site.intercity_phone')}}</a>
                    </p>
                    <p>Mobil:<a class="text-decoration-none link-secondary" href="tel:{{setting('site.phone')}}">{{setting('site.phone')}}</a>
                    </p>
                    <a class="text-decoration-none link-secondary" href="mailto:{{setting('site.email')}}">{{setting('site.email')}}</a>
                </div>
            </div>
            <div class="col-sm-6 d-flex align-items-center">
                <iframe src="{{setting('site.location')}}" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>
</div>
