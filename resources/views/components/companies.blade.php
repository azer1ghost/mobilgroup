<div class="vh-100" style="background-image: url(https://mobilgroup.az/mb/img/company.jpg)" id="companies">
    <div class="container">
        <div class="row align-items-center vh-100">
            <div class="col-md-6" style="color: white">
                <h1 style="border-bottom: 12px solid #99cd07;display: inline-block;color: white ">@lang('translates.companies')</h1>
            </div>
            <div class="m-5 col-8 justify-content-between">
                <ul class="nav nav-pills mb-3  owl-carousel owl-theme" id="pills-tab" role="tablist">
                    @foreach($companies as $company_logo)
                        <li class="nav-item" role="presentation">
                            <a data-bs-toggle="pill" class="@if($loop->first) active @endif" id="pills-{{$loop->iteration}}-tab"
                               data-bs-target="#pills-{{$loop->iteration}}"
                               role="tab" aria-controls="pills-{{$loop->iteration}}" aria-selected="true">
                                <img style="width: 150px;border-radius: 100%" src="{{asset(Voyager::image($company_logo->getAttribute('logo')))}}" alt="">
                            </a>
                        </li>
                    @endforeach
                </ul>
            </div>
            <div class="tab-content" id="pills-tabContent">
                @foreach($companies as $company)
                    <div id="pills-{{$loop->iteration}}" role="tabpanel" aria-labelledby="pills-{{$loop->iteration}}-tab" class="tab-pane fade @if($loop->first) active show @endif">
                        <h3 style="color:white">{{$company->getTranslatedAttribute('title')}}</h3>
                        <p style="color:white">{{$company->getTranslatedAttribute('description')}}</p>
                        <button type="button" class="btn btn-success">
                            <a class="text-decoration-none" style="color:white" href="{{$company->getAttribute('url')}}" target="_blank">@lang('translates.pass')</a>
                        </button>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
