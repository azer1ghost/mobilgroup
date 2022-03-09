<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <title>Mobil Group</title>
    <meta name="description" content="@yield('description', "MOBİL GROUP gömrük brokeri xidmətləri və beynəlxalq daşımaları həyata keçirən şirkətlər qrupudur. Yerli və xarici vətəndaşlara, o cümlədən fiziki və hüquqi şəxslərə göstəridiyi geniş xidmət diapazonu ilə MOBİL GROUP özünü təsdiq etmiş yerli brenddir.")" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="robots" content="all,follow">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
    <link rel="shortcut icon" href="https://mobilgroup.az/mb/img/favicon.png">
    <link rel="stylesheet" href="{{asset('assets/js/owl.carousel.min.css')}}">
</head>
<style>
    @media only screen and (min-width: 992px) {
        .navbar-brand {
            position: absolute;
            left: 50%;
            margin-left: -100px !important;  /* 50% of your logo width */
            display: block;
        }
        .navbar-expand-lg {
            height: 80px;
        }
    }
</style>
<body>
    <nav class="navbar px-3 navbar-expand-lg navbar-light" >

        <a class="navbar-brand"  href="{{route('index')}}" >
            <img width="180" style="align-items:center; !important;" class="m-2" src="{{asset(Voyager::image(setting('site.logo')))}}" alt="Mobil Group">
        </a>

        <button class="text-dark navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent">
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto">

                <li class="nav-item">
                    <a class="nav-link text-dark" href="#companies">@lang('translates.companies')</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark" href="#contact">@lang('translates.contacts')</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-dark" href="#" id="navbarDropdown" role="button"
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

   @stack('scripts')
</body>
</html>
