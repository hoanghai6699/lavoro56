@extends('admin.master')
@section('content')

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/drilldown.js"></script>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Thống kê sản phẩm bán chạy
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{route('admin')}}"><i class="fa fa-dashboard"></i> Trang tổng quan</a></li>
            <li class="active">Thống kê</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Small boxes (Stat box) -->
        <div class="row">
        <!-- Left col -->
            <section class="col-md-12">
              <!-- Custom tabs (Charts with tabs)-->
                <div class="nav-tabs-custom">
                    <!-- Tabs within a box -->
                    <ul class="nav nav-tabs pull-right">
                        <li><a href="#revenue-chart" data-toggle="tab">Năm</a></li>
                        <li><a href="#sales-chart" data-toggle="tab">Tháng</a></li>
                        <li  class="active"><a href="#chart" data-toggle="tab">Ngày</a></li>
                        <li class="pull-left header"><i class="fa fa-inbox"></i> Thống kê</li>
                    </ul>
                    <div class="tab-content no-padding">
                        <div class="chart tab-pane active" id="chart" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
                        <div class="chart tab-pane" id="sales-chart" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
                        <div class="chart tab-pane" id="revenue-chart" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
                    </div>
                </div>
            </section>
        </div>
    </section>
    <!-- /.content -->
</div>
@stop

@section('script')
<script>
    // Create the chart
Highcharts.chart('chart', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'Thống kê số lượng bán chạy'
    },
    xAxis: {
        type: 'category'
    },
    yAxis: {
        title: {
            text: 'Số lượng'
        }

    },
    legend: {
        enabled: false
    },
    plotOptions: {
        series: {
            borderWidth: 0,
            dataLabels: {
                enabled: true,
                format: '{point.y:.0f} sp'
            }
        }
    },

    tooltip: {
        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.0f} sp</b><br/>'
    },

    series: [
        {
            colorByPoint: true,
            data: [
                {
                    name: "1",
                    y: {{$qty}}
                },
                {
                    name: "2",
                    y: {{$qty}}
                },
                {
                    name: "3",
                    y: {{$qty}}
                },
                {
                    name: "4",
                    y: {{$qty}}
                },
                {
                    name: "5",
                    y: {{$qty}}
                }
            ]
        }
    ]
});
Highcharts.chart('sales-chart', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'Thống kê số lượng bán chạy'
    },
    xAxis: {
        type: 'category'
    },
    yAxis: {
        title: {
            text: 'Số lượng'
        }

    },
    legend: {
        enabled: false
    },
    plotOptions: {
        series: {
            borderWidth: 0,
            dataLabels: {
                enabled: true,
                format: '{point.y:.0f} sp'
            }
        }
    },

    tooltip: {
        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.0f} sp</b><br/>'
    },

    series: [
        {
            colorByPoint: true,
            data: [
                {
                    name: "1",
                    y: {{$qtyMonth}}
                }
            ]
        }
    ]
});
Highcharts.chart('revenue-chart', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'Thống kê số lượng bán chạy'
    },
    xAxis: {
        type: 'category'
    },
    yAxis: {
        title: {
            text: 'Số lượng'
        }

    },
    legend: {
        enabled: false
    },
    plotOptions: {
        series: {
            borderWidth: 0,
            dataLabels: {
                enabled: true,
                format: '{point.y:.0f} sp'
            }
        }
    },

    tooltip: {
        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.0f} sp</b><br/>'
    },

    series: [
        {
            colorByPoint: true,
            data: [
                {
                    name: "1",
                    y: {{$qtyYear}}
                },
                {
                    name: "2",
                    y: {{$qtyYear}}
                }
            ]
        }
    ]
});
</script>
@stop
