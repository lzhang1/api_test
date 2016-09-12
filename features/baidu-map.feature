Feature: 根据ip获取地理位置
    Scenario: get location by ip
        When I send a GET request to "http://api.map.baidu.com/location/ip?ip=202.198.16.3&coor=bd09ll&ak=60IFKTCwlIsSpDcGfkx36L8u"
        Then I dump the pretty JSON response
        Then the response status should be "200"
