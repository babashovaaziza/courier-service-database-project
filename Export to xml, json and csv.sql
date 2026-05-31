/* Export to xml */
select top 2 ord.orderrNo, ord.orderTime,ord.deliveryAdress, osh.onlineShopName,
           car.carrierName,cre.vehcileNo,cre.vehcileType,ord.paymentMethod
from Orderr ord join OnlineShop osh on ord.orderGivedOnlineShop=osh.onlineShopNO
                join Employee emp on ord.acceptingEmployee=emp.passportNO
                join CarrierEmployee cre on ord.carriyngEmployee=cre.passportNO
				join Carrier car on car.carrierNO=cre.workingCarrierNo
                join Branch br on emp.workingBranchNo=br.branchNO
where osh.onlineShopName in ('FoodExpress','Asaxiy','ZoodMall')
      and ord.[deliveryRouteLen(km)] > 3
    and cre.vehcileType in ('Car','Van')
for xml path('Order') , root('OrderDetailInfo')
/*<OrderDetailInfo>
  <Order>
    <orderrNo>6</orderrNo>
    <orderTime>2024-11-11T13:15:00</orderTime>
    <deliveryAdress>Bukhara Center 20</deliveryAdress>
    <onlineShopName>FoodExpress</onlineShopName>
    <carrierName>SpeedLine</carrierName>
    <vehcileNo>01F006FF</vehcileNo>
    <vehcileType>Car</vehcileType>
    <paymentMethod>Card</paymentMethod>
  </Order>
  <Order>
    <orderrNo>2</orderrNo>
    <orderTime>2024-12-12T11:15:00</orderTime>
    <deliveryAdress>Chilonzor 5</deliveryAdress>
    <onlineShopName>Asaxiy</onlineShopName>
    <carrierName>FastDelivery</carrierName>
    <vehcileNo>01B002BB</vehcileNo>
    <vehcileType>Car</vehcileType>
    <paymentMethod>Cash</paymentMethod>
  </Order>
</OrderDetailInfo> */

/* Export to JSON */
select top 2 ord.orderrNo, ord.orderTime,ord.deliveryAdress, osh.onlineShopName,
           car.carrierName,cre.vehcileNo,cre.vehcileType,ord.paymentMethod
from Orderr ord join OnlineShop osh on ord.orderGivedOnlineShop=osh.onlineShopNO
                join Employee emp on ord.acceptingEmployee=emp.passportNO
                join CarrierEmployee cre on ord.carriyngEmployee=cre.passportNO
				join Carrier car on car.carrierNO=cre.workingCarrierNo
                join Branch br on emp.workingBranchNo=br.branchNO
where osh.onlineShopName in ('FoodExpress','Asaxiy','ZoodMall')
      and ord.[deliveryRouteLen(km)] > 3
    and cre.vehcileType in ('Car','Van')
for json auto, root('OrderDetailInfo')
/*{
    "OrderDetailInfo": [
        {
            "orderrNo": 6,
            "orderTime": "2024-11-11T13:15:00",
            "deliveryAdress": "Bukhara Center 20",
            "paymentMethod": "Card",
            "osh": [
                {
                    "onlineShopName": "FoodExpress",
                    "car": [
                        {
                            "carrierName": "SpeedLine",
                            "cre": [
                                {
                                    "vehcileNo": "01F006FF",
                                    "vehcileType": "Car"
                                }
                            ]
                        }
                    ]
                }
            ]
        },
        {
            "orderrNo": 2,
            "orderTime": "2024-12-12T11:15:00",
            "deliveryAdress": "Chilonzor 5",
            "paymentMethod": "Cash",
            "osh": [
                {
                    "onlineShopName": "Asaxiy",
                    "car": [
                        {
                            "carrierName": "FastDelivery",
                            "cre": [
                                {
                                    "vehcileNo": "01B002BB",
                                    "vehcileType": "Car"
                                }
                            ]
                        }
                    ]
                }
            ]
        }
    ]
}*/
go
create or alter function udfDeptToCsv() 
returns varchar(max) as
begin  
  declare @csv varchar(max) = (  
		select string_agg(CONCAT(ord.orderrNo,',',ord.orderTime,',',ord.deliveryAdress,',', 
		                         osh.onlineShopName,',',car.carrierName,',',cre.vehcileNo,',',
								 cre.vehcileType,',',ord.paymentMethod ), char(13))
		from Orderr ord join OnlineShop osh on ord.orderGivedOnlineShop=osh.onlineShopNO
                join Employee emp on ord.acceptingEmployee=emp.passportNO
                join CarrierEmployee cre on ord.carriyngEmployee=cre.passportNO
				join Carrier car on car.carrierNO=cre.workingCarrierNo
                join Branch br on emp.workingBranchNo=br.branchNO
		where osh.onlineShopName in ('FoodExpress','Asaxiy','ZoodMall')
                and ord.[deliveryRouteLen(km)] > 3
               and cre.vehcileType in ('Car','Van')
	)
return @csv
end

--test
select dbo.udfDeptToCsv()
/*2,Dec 12 2024 11:15AM,Chilonzor 5,Asaxiy,FastDelivery,01B002BB,Car,Cash 3,Sep 12 2024 10:55AM,Mirzo Ulugbek 45,ZoodMall,TurboLogistics,01C003CC,Van,Card 6,Nov 11 2024  1:15PM,Bukhara Center 20,FoodExpress,SpeedLine,01F006FF,Car,Card 8,Mar 11 2024 10:11AM,Namangan Babur 8,ZoodMall,EkoTrans,01H008HH,Van,Click*/
