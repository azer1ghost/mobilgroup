<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Mobil Group</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="robots" content="all,follow">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
    <link rel="shortcut icon" href="https://mobilgroup.az/mb/img/favicon.png">
    <link rel="stylesheet" href="{{asset('assets/js/owl.carousel.min.css')}}">
</head>
<body>
<nav class="navbar px-3 navbar-expand-lg navbar-light" style="background-color: #050e3a;">
    <a class="navbar-brand" href="#">
        <img width="150" class="m-2" src="{{asset(Voyager::image(setting('site.logo')))}}" alt="">
    </a>
    <button class="text-light navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent">
        <i class="fas fa-bars"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto">
            <li class="nav-item">
                <a class="nav-link text-light" href="#navbarSupportedContent">@lang('translates.main')</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-light" href="#">@lang('translates.about')</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-light" href="#companies">@lang('translates.companies')</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown" role="button"
                   data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    {{ucfirst(app()->getLocale())}}
                </a>
                <div style="min-width: fit-content" class="dropdown-menu" aria-labelledby="navbarDropdown">
                @foreach(config('voyager.multilingual.locales') as $locale)
                    <a class="dropdown-item " href="{{route('locale', $locale)}}">
                        <span class="flag-icon flag-icon-{{$locale}}"></span>
                        {{ucfirst($locale)}}
                    </a>
                 @endforeach
                </div>
            </li>
            <li class="nav-item active">
                <a class="nav-link text-light" href="#contact"><i  class="fas fa-phone-square"></i> {{setting('site.short_phone')}}</a>
            </li>
        </ul>
    </div>
</nav>

<x-banner/>
<x-companies/>
<x-contact/>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<script src="{{asset('assets/js/owl.carousel.js')}}"></script>

<script>
    let owl = $('.owl-carousel');
    owl.owlCarousel({
        items:4,
        loop:true,
        margin:40,
        autoplay:true,
        autoplayTimeout:1200,
        autoplayHoverPause:true,
        responsiveClass:true,
        responsive:{
            0:{
                items:1,
                nav:true,
            },
            600:{
                items:3,
                nav:false
            },
            1000:{
                items:4,
                nav:true,
            }
        }
    });
</script>
</body>
</html>
