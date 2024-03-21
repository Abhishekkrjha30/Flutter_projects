import 'package:flutter/material.dart';
import 'package:food_delivery/Model/DishModel.dart';
import 'package:provider/provider.dart';

import '../Provider/CartProvider.dart';

class Dish extends StatefulWidget{
  int _add=1; double _price;double _price1; String _dishname;

  var dishname; var dishprice;
  Dish(this.dishname,this.dishprice)
  :_price=dishprice,
  _price1=dishprice,
  _dishname=dishname
  ;
  @override
  State<StatefulWidget> createState() {

    return DishState();
  }

}

class DishState extends State<Dish>{
  var dishName=[
    'Saumon a la parisienne',
    'Boeuf Bourguignon',
    'Croque Monsieur',
    'Soup Du Jour'
  ];
  var  dishPrice=[
    65,
    28,
    13,
    11,
  ];

  List<ModelDish> model=[];
  @override
  Widget build(BuildContext context) {
    final cartProvider=Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('${widget.dishname}',style: TextStyle(fontSize: 22,letterSpacing: 1),),
            ),
            Image.network(
                'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFBgUFRUZGRgaHBoaGRobGxobIRsZGBsaGhoaGB0dIS0kGx0qIRoaJTclKi4zNDQ0GiM6PzozPi0zNDEBCwsLEA8QHxISHzMqJCo1MzEzMzQzMzMzMzMzMzM1MzMzMzMzMzUzMzMzMzUzMzMxMzM0MzM1MzMzMzM2MzMzM//AABEIAMIBAwMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAAFBgMEAAIHAf/EAEEQAAIBAgUCBAQDBgUDAgcAAAECEQADBAUSITFBUQYiYXETMoGRUqGxFCNCwdHwYnKS4fEzgtIVQwcWJDRzorL/xAAZAQACAwEAAAAAAAAAAAAAAAABAgADBAX/xAArEQACAgICAgEDAwQDAAAAAAAAAQIRAyESMQRBURMiYXGR8DKBobEUI8H/2gAMAwEAAhEDEQA/AJMz8NsstZuBh+FjB+hpbv3nQ6biwR3roGeYO1bUtbuaD2B2+3FJ4y69dnyavWazTj8IqlEoI9tudq3/AGM8o/51Hfy3QYdWQ+oMffio1wzjdHmq7ECWGx2ItcEx6GimB8SwwNwHbmgCYq6nzLqH3qUYu3c2YaTRUmuiW0dNw3iezcWNUHsaUPGQlP3W88xQJ8J1tvP1rP226nzKSPvViyP2PzYttbZeZFPHhfKWuW9Rcz2oemPtXNnQUxZVmNq2AFIA+1NzjLsnKL7Bua5Q9v50lfxD+dBzgjzbf866JmuaW2sngmKSssyK5dl0YrSyxXuOwOPwUreY3rfzTFXEzO3dILjcV5iku2trtuV/EKrizaufKdJqh8o/gS2hpwuPQgAGidlweDSJ+yXLe6nUKsYbOntmGBqLM4/1FkcjH5HIqVbhpawOfo3NGrOLVuDV8MsZdMtU0wkmJIqymLoYr1IDVljBZMYKspihQDVW3xT3o8iUMquDXpoDYx5HNFLGLBplJMUnLxWfFr2Qaje3RIb/ABRWrXoqEiDWOagT04sV6LymqzBayVqELUA8VqVNQpdAqdLgNEBpJrKl0+te1CHFsTk+LvOHQFh3JorgDjcMPNakdY3pztj9nYLHk79quY/F2wkxJPAqn6S9OheIk3fEVq4pW4kHgyKVMVgjqLWmgdqYMb4cuXbhceWTVvCeDgN2djVUsWRv5A4tiqgvryA1blw2z2jPoJroWHyRUHH3qcYBB0H2po+PL2wcBCw2UBt01IftVkZdiFMHS6/nTobKiq7uimDTPFGP9THjhvq2LJyBbg8w0mq//wArMDtcMfSnexZVgDMTRFMoWZJlaKhB/kd4a7QiYfJSuxuTRfAW/hDZqbbeV243ArW5k9o7DYn1p1GK6F+ml0LWYFLqFW69f7FCR4cwuiNRDd5INN97JRDBX470KxOCKRMGi1F9hcL9C7byUp8t7bsYNTNlOoeYqfp/vRS4m3FVWA7Uj8eLK/poE3vDJ5ttBqt8LEWjuCR6UbPcEj61vrPU/feq5eGn0ycEVcBnpGzg/amLBY+3c/iFL7uOqiotdvsR7VFiyQ6dkSkumPIwk8Gagu4VhvQHA5s9vZbkjs3+9GMNmjPIYDftRc67THt+yIEHg1vhr8cHiqOCtfCuMGkhiTPaaHZ272mlBKNz6Vk/5Ml2gWPFm/tzVq1iOhpIybO1caeI7mjuAzAM0BgY9atx+XF9kTGJ0mq7pUpvgLJNeoZ3FbbQSjdtGqZVhRpkqJrIqEBDkio/2giiz4aqd7A9qlBIf2096yo/2Nu1ZUpk0TYlzc2C7dzWWcuHWpVeK9fERVlIFkotIOlRu8VWfETUVy5tJO1QBLcu0NxOOAOkbk0Mx+aSdKtA71QaGIIaZ59KwZvM4/bE34fEctyJnzEnYsdWrYdI61J8YFDc6qY371pi7C3Ar2/I+mCI2Yjt617hmkFLiiQZBO252+orFKbb2zfGEVH7UW0xR/6ZBIIk9/oR0ojbxl2yAC+u2w8jASVP4WoWvkEq0lTJAI4PEelTJii3lkS28AcGmWTj+oksfL1oNNjgQoDNMeY9PrUF/FmC8kiYB3E+xqjbxPmKsY382wnbmKkRyxGlpA+w9x3pnllLoRYlEt2MWGEAzHP+9SuiEBjwOSTt7ChF5APMG+Y7jgfepV16eJXv296MZS6aJKC7TCT3l0EBYU7TFDMTh1UAzM1u1q4oADSp83/FbNaBIHXrV31Jroq+lB9g/wCGJqFkojdsKP4v96iS2CDWrFm5alpmXLh4bjtA2/Zqo1gijbW49age13q8zAonpHFa/HZTIJHtV42vSq161UoJPhs6uL8wDj15oguY2bo0uNJPelt7RHFQgkVTkwxl2iaGWxkFkEkMRPYmrOUZOLLMVYtO8zSzhsc6Hyt9DxRfC5yrbMdDd+lYMvhyjuOwcQkl3ENd0kEpO3tTphk0qBSphswuj5bev1Bq4mctPmQj6Gkw5Vib5Xf6PQUhjNwV58QUJtZmjelWkuqetboeRCXTDRbNyvPi1otsd69+DV4D3UKytPhVlQgDLmsNaxVXMcatq21xzEDb1PanboiV6RJisUlsS5jt6+1K+PzhroKqwB6A9aXM4z+5cbUDxx6e1BxjmJ807bVhzTnLS6Ol4+GEdy7GN7pEF+vQmruGxX4Y2j+z3pYt41T8x47mYq4MxjgdK5+SDOlGmg9cxZ1aieams/EunSksRvHZetK74tyRtRfJsWwuBkPowmJX+ITQUKeySqrj2gz+zKocOfOI0qNwQY57d6zB2WZXKwdADMJ3KRJisa4LWJDlF0FjBHmGhugHpxV97ot29Ft0ZGGrSQVdiSZtqeu0VbHHFvfozyySS17NsDgFZWd5UEyqwdRU9QT0q9h8Kqv8MNtsxC+bY/i+tLp8T27QMK8D5UdpkEQVJ30gGYqpj/HrQvwkW2dJVj80g9u351oiscVrsqlHK3+B3ewLmrUwCEagYgdtp4Ow+9U3+DYhblyVbUykHmOQ0dK5tivEuKuqEDuVAiBsDvO8c1Ut4S/cPmJAFPd7S/cVQrTf7HQF8Q4dUJdmLFjpC/wjuRNUrXidCZ2Hf0pewnhsMYuO2o8KvWvV8GXdRnYd9VDi37DyjHtMZ2z600EkSKtW8wtMV0vJJgikm54ddZI1QB171eyfJH+Mm5O4Jj0ocJRd9glKEotO0PTWahfD0eOFHHtUdzBkCY2G1dHkjlC81mqlywSIoy7qSQBxydtukn0qK0qljMle6/rVEvLxJ8W1ZKYCbDdIqC9hqamyok8jvvVHE4IoYYe3rTwyxmtMgsXsPtVJlKnvTG9ih9+xzVgDzK83uWWlTI/CeKf8mzuzfABAD9Qf5Vy29bKmpMNfKmQYI4pHEY7KbCfhBqJ0QH5YpYyDxDrARzDdD3piGN6GkcUyGxuITAO9aOzDgzWBbTb6QDXv7KOVY+01VKMyxOJvravKh+G3rWUtv4YaQNdwvNIHjLB3blz4lttSAfJ2PUgUz4zEljtxQzFYkW1k/atkoqXZVCTi7Qj2cGSNzW1zBHoa2xeJ85YbAmo2xlZpRp0a4zvZDcwbA7Ce9EsDhWIllgcEHbb0qoMXB2rY5m3faqckORdjy8QniLFsAHeapPd0NIME1CmLnc7j3qTE3kYbbelZ1hfsvfkpdF7DZwFEuA2/f6xRbMc4W8tshdDgeR9UBDI9N9hXP8Y0cVey24zL8O4TokEe44q5YnGPYv1ozf5DRXSS10hzqHtHU+pqBsRYNwApKDmNj9DXmOSAPMY/OhL3AOYFSMH6ElmaY3WrFsr8SyyIVMw53I9uKH4/HmYFwssDaADI9qWLuOTpJ9qJZVlmJvqXtoqjux/SjJOKuTpFT8hLoN4PNntqdIWTyxkke1F8jz83Lhtu8SNm5g0JwfhZihN1nLDokRMTFXMPkdxZFiwVnlmI3I6CTVblFr7bbLsHLI7lpfks5rg8bJCnWrfxz06SOlWsM1zBWJcFndo1j+Ge1FMI9y2FW4VEQCpOppA34qnn/iEakRYG41ah07gdKjzpQa6f+SrNjt6egubhayNZeXWNyQR2NAbGetYtsLussxIRmJCgAkA7jfvVDHeI1VHUOzMY0sTsveBXmS3/ANrD27kNaCgMCdy5B0aIOx2JnpWD7rUrdf6MjinLjEN5Jm5dLmhE1MsprIBY77qOv19Kh8M4u89829J1CZU7AR19qXHzC1buFbTQEbTMzuIBAPYGR9KefC+PkPcIWdMAxBP1pVHlNKVpfIOm0T28c/x2DbFWKkbbUQY/EUFkAI4bf8xSZic7FvEOXVmOvUSOuw2+1HrXiTDkqGfaPlHIHSf6VvhKFbdGrLGLinXpFp8q1sQxCkdF39poFfwhBMimY5xaEuF8rcRBJYeg46VFeydrn7wP82+iOJM8962Ys0Wqi7M6hF96Eu/hKGPZimTHEW7jWmEkRuNwJ6VWxGEJBIUx3itMZ2LOHH3YGtOQe0bzTplGL+MmlvnA+4pPuYcg1ey6+UYMORUaETHF1YDk1AMTcXaTVtXVlDdGEj0Paqt7STzSBRi424f4jWVtpXvXlLTDaA2I2oBmuIEGYprzHCyDSNmOXuTtNaStC3jHO8VQa6wo3dwjjlTVN8J6Gq2h1KimMXxO1WEuLzNefsLfhP2rYZY54Q1W8Y6yMx7y1NgFN24tu2NTsYVZG5ievtVVspf8JojkmRObyFlKgMpJBIMAzsRuDSyhSbI8gVveCMcdxZU+nxEn9aoYrLcVh/Ncwt1QDzp1Lt/iWR+ddas4gmCGPsTRPDYmdjsRx9K5y8xcuLApSWzhL3r90+S0anwPhG7cOq4YFdqvZfaY6mRQT1UQZ6zHNbYfLLUFQAZ2k8/SK2Q8jH17BKUn2cwyfIMKHKncgxLcVmdYW5gyPh3Ays+kaehJ226iuivk1lTvbQHv7+taZuiGyVK9tMASCOCPWsebk7cnaW6JXwBEwzFxcYySAG6bqI3A4rTOs3sovwxPxGBCEFoV9gNWk87z9KNZbaeAWKq3WQGJnmek/epcVgVVH8qlWHyxtPEmOT61VHkly4vZsXkNUpJ0vjQiZc9yyGfUH/eFS28k9gN96LZ3l37daS4k27ymG122AIM9RE9No2rHxeHtMHOgusgnYb+g7+tSXPFtuPIrO3oPKPdjt9qOOCb5PTfo1S8dZFaT38sp4CxcwMI9u24YHzEBmY7A89N+KmVNFnE4kW1QBGZUUQS4WAxq1YxusG7cRV0gEbElt+J/hHr0qOznSXXZMNb1yRA1AAGd4LQCO0x1pMsXCSl2vgz5ILCml29Wc6yfBAsvxQyqOh2LT39K6VlGOsqPh94VAgHzH8RJ7VFezBg5fFYZG20qzhbkexUkT/SpVtYYW/iWwqvBIgR8u+/Q+/O9VZMnOaldV6McbbSPc3wd5HS4hD211EpADKT8xI/ikDmqWe5U16wl2xbOvVv8o7CJ9uhqxa8TWzCNv3oml5tDXLbhpiAd95AiOaD/AK7d9fzRongST3QPyTK7lsgXHRtMFihJ0mODIorY8U2ifhjUF1aA+2nVMcc0Mx+Muaw1vyOwYOBsHAgwB1InYeppEzm3eN1rnwnRHYkSCATtJ225/WrcVpvhozK+mdOOCt3WZQFLo3nAMg7zz60JxdzF27jH4DNZknQm4ECATG/TigmT56cNsqSY8wMjjoIovg//AIiWifNbcHjaCK0qfJVJtf5L5Y3xXLs9fCuyfEZCs7mQRE1SW3vTMmfW8SuhUbzbDqZ9hQe5h4NdDx80ZxpO60ZpR4sNZR57ZU9N/wCtWMXlhA1KagyBfMR3U/pTBhBqtifUfYxVr7AK0f4qymC5h7cnisocWGwTilmhl2yPSjGLt0LuoRV5UUrmEQ7RWLk1vmKuIBxEVIhqEspHAoP4R9q9GFTsBVxz6R6zQTGYi+zlbVskDbYjeOYk71TmzRxpN+yyEXJ0jzEXrSkgKGYfQT6mpMqss83Auyqd4hfUifm2oXgMytW20vaZrnRSp5PWDt9avYrN7vxUVoABUm2vABBMO304rk5vIlkTV6f+jbPDDFHe2FUukbkEdjvB9p5q7Yx46ncVmCzsMGRwAPw7N9DvxzQO18NrjhHLlRqCAwWWd9P4iO23HWuPKLcqi/1M1oav2nUJBr23i43mgvwWdC9mUZRLoSWE9JnzAn7VRwmLNy27lirLI0x1HM77U9zXf7kVMYcwzFSsFxB28x+u1D8BmYNxrVxl07aHBkN6MTBX0mue5tnIdhvJXj6gfpUmSYkXLqBidJnUREgAE7TtyBW3H9SP3MvxZVfD1/6dUvKQYIg/r7d6x8UPhurSfKxEbHYHr0O1bC6Lls6G0z12JB7kEQftQHEroVhcbcA7sTvv0A2M+1bcubjWu/2LMkklTRz1MagbzW+vPfjkH+96KJnttSAok9io29ulEckS3LhbaspkOWUHY8AzP2ovlnh3DMzqLIYHzSSZXbhDMgVjWfdUx4+XJR0kBsZkzYxBovMhK/KokbDcsg36d+lAstK4dmt3Gh0eCVnczz9oiuhp4da22qxcPEaHMbbggMPQkb1y7xTgbyYm4zoyaiCNQjUAAJU8N9KOJTyXCXXdmLLklJ8mdDwuYOGe3Ie0/Q/hYf7zQnKnu6ntwoQMyBjyYJEgduKDZCmIuqIaFQbDYFhudjRjB4m29xQ7EAEHYwdzxMbfasyg43bTr/Aqfs9sZTbDliCTPqIPaKN2Q6LqUAAbTqUGOp0nketWcywhuWxct3CY8ukxvAmFPI2P1oLbtE7NuO3X/msuZ1JOTf49CynJvYQzWyl0KyFp/igjyuo2dSCZneqeV4nzm38NmKiGAQkbdWA7iDPrU2GDW3DDzIeR6e3er+Ms+ZLltvKZkAH5ujTOw7jvVkMnK230BdiznV9VaEtupLaC6qQOJZZHO3SljO1RShQkk7lj5ZmuiZpmCG1rZmS6jhpgQ0kKZHXpVPOcK2YYUqEBcOCr8QZEy3EROwroY5pyjb0XznKX9hIyXP2tuIJkHaD/ADrouCuLdtqysGkbx39aSb3hr9mOlllujQYOwPlnkCRTD4csMjSetdLDghGXOPsodjrklqCzHop/SvWzVbNkk7nU4A+tS23FuwzHlv0G5/lSxYw7XrmjfefpJk1q7ZPR5dv3HJaTvvxWU54XJ0VFG5gVlHkLRRvp6VQxNo9BRm+tUbtsEU6FBSiKr4nGLbieZgcfz4q1idKbtt/fWkvxKfiMHtefpp6x0MH61Vmm4x+3sMYt9FrNs7V2TS5+bzLEDYwN+tT4PO4cGRtBg8H0jtStevNbQIF0sVlp5k9/YRQG5mLK28k9DXJzQnnSt7Q3WjoGc5i1y6vw0AMli0GFH4Z6+1BczxNzWSWOpomBG8ACKkyDGkWwrCXZiY5O8RNMi4YFQzAa+fb/AHquOHiuP7l8IuegThskvXEBd2Rmj3C9j2P6VCuXXLNxdSkRq0NMhtjpGocH3im/L7undz5QO0n6d6RvEuZXL1z+JEX5FMqf8xHf9PvQcN8V7LckIwj1sJZVnEXB5mIgBgWnUT3niPT0ovmdr4Ya/ZBlyXK6tQJG+07ztwea5wGa2dQMzz/WmbJ82+IBbJJJ29N+9U5sMo00Zk7YpYdWv3WK7FuCeOpM0dyK2mHuTduDSyMJ408QfQGI+tb3fDGItk6WtnYnytMLzExzQPH3zBVpnjfmtvJTdJqvgifF2dEy7P7aEKLiMD8vmU6h6CaK5jjrN62yu0EjYjkbciuSZVYUpqbnfb2oyVuXVC2NYZYDMN1XfqegjoeaEk19va/J0IZ4zVSV/oPfh/Di3hvhmCxuOWbiROx34BGmjmEQIdiDPb+VAr9626IGHKMNR2K6QBqnp0P0oHgcwum44tH4iISoJMFivJkbaTIjnisc+Tdx3X9iuWH6bpnS0vjrVLOvhuqh4MEsvEglWQ6T0MOfoaWbec4mDpwtwkd9AE+88esUHwNzFtdLMkBjMMZA4EgyTwB9qZTyOL1X8/BXPF8E+a5gmFbUjgMBsIM/4TttSPg8yaSepiZ7TtFO2YeHxfcvcA1NAGljEAACR9OlULmSLhf32hZGyNJbzHgAHgxRg4QjTTbZRPHNLlWgvk2EvELFyAQSAwKttxqXkA96s4l3U7qPfvH6Gg2W41zvqJI6k7/emeziVukqxWTM9AdokT1mubmVypozuTYLF9mlQSdpH05FG8ER8EqTtpLTPG3/ADPtQbCJ8G4WZhCiVaQQR6kbbUG8TZrdZxZDAW2TWxXlg7GV42G28czVmHDcq/lD405aJ2x9vEa1cMykqbYG0BY+Y87xMesU0YW4DaVEhVQHpsOeOhNKOSZc1wao0W13Zz19qmfNLrNpSEQeVFAmf8RnrXQw+POUtaibeMYrfZbxd1rpDXG2XYD+najuRWA0KBH9B1oPl+XydRG/9/empIsWiTydo9v4f6/auxjioxSXozS2zfMW+I6WLfXb2Qbkn3/mKK5VlgtCdtR3P9BQLIcUpL3CfOxj2H980z2r806BL4Jq8rbVWURQb8fVzUF9JFV1cb71jPsd6toQUPEl5luG0TyJJk7TxHelV3IfcyelMni1tBDOjNGyvI2J7jqNqX8DZ+JcE9dz7VjyxlytvR0fHcK0th7F5P8AtNuzc0gaDuTABXgg9TuPbaiAydDs1sNtxpBBAkHn2oFi/EDLcFtVBRNmmRHbT04/WilvxJaOlEZmP8IAjcxwTwelc6cIzlc7pfA0scJSttX8dEuC8KWluLdR3BgkoYI3kADaQACep6VvmLWsPDXHiZAU81YtYi85OlAgP4jPPaJqpnfh63fhrjurhY1LuIHpx1pvqQlqIspxxqoiw+fuz6x5VHCgz9T/AEFGbeaWr1s27+krHzNtpPcHoaB3/Cdy2Ga3cDqDwVYEfaRvHpzS7ibF8kgW3IkjZWIkGDuBB3qT8eM6adP5MznKTtjpk/hm0Za65YGYUHSNM7SeSY9hUfiDILeEuJctHyPII3Olokbnv2r3Lbt9lUC2dW3zSu/1on4vt31wTrcUlV0lSCCASywZG43NZv8AtU6km09fgjjW6KeDzlXRgNAjaXAgeopKxc3bxCAsx2EAkknbbae1MnhrIrTgfFZiWmIaPQxHaacLWS28NbiygGqJb+I9tTEyRNW+PCEZPi7osjilJJvSYn5XkAw1r4l0A3OiEghBO2w2J4k9KO5Xizdti2iKqKSWCgAcySY7nequaYRrjrCsxmF3Mb/MfX/mtcyzRcBbaxbIOIuDzED/AKakc79e339Dpa5M0tRxxskzzKmuqBbuwEBlTBV23JViNwNgO3eheFvMzf8A06vb0nS+tVAkeVtcGJ1CB9ahyrPWsqFhXBBENuJaRP0mrWGzNbd9GviUAYwOFdzIcxu/beY2jisitOn/AGMcsrnPb7HPMLlwJ8S3cCADzKFDKR3nYj3H5UBynxLiLrFFtW+vm3j3HemTD3rV22fhlWUyTBkEHn0pby21oY7aApPPCgdz2il8iThC12XTnKOinmXibF23KMiAjqisZ7HdqpX87a8gS4esyQB5txMD0NPGFNq4fiWirlTpJ0nYx0LDfnkd6HZphcNa89zSGPCgAk+yj9ari3OKtbKJ5JS03oVHxQtqdIPctG3barWVm5eEWwF2+ZiNpO5igOcZsL93QPKibKvfuzdCeNuB06kmsoxfw9MHykQ0j8j2pp+PxjbW+yqME3sMYbBJLYfEFSQJ3E7kSpQiCpPf71VfJ7Vt0uODf0rotpIGhQS2p94nfrttWZtZ+LeS4CQFthSByxBYjf2Iojhgsdf5zWvxfFlH7pPT9fqOpKL0iG/ce6oQwig/Iv5aj1qaxgF1DaSTA6/l1q5hMK10xbTbgsZj6fiPt+VELr2cKDMPc69foew/wj6muhFKKpDNuTLVq2lhNbRqjb+i/wBaRPE/iNnuC1bI1EgeiLyf+6Kt5vmdx2IYkMSNuoB/JaG5HkZvXHvAEKphfUxv79asrVgbSDWUYwhvJEGNt42G496c8NjBpBnY7ffpJpIweF0tPbcD2q7nGO04dlAILSqgSfO3QR15qIWRbx/jApcZQsgEgEMm8fWsrn6Y5iJa3qbqwncjaT69/WayrdCHU2Ejetbex2O1C8v8R2rkSdDflNFkYNupBnsf5UJTaWgcQbn2EF1GBmPQTPsBSLZufAc2gp1EhVnZgW7j6iumsDB06Z6TIqljcKH+G9y2GdDqnTqPlMrB94rn5JZG/uWvwWwm49C3jPCJ+GdLydz7mlvA2zb122Ua5lNQB3BPy9j/AEpxzPH44n90iovYpqLdYJI/Q0KzDK7mJ0syG1cHp5T6q3I9j+dJLA3EVzb7KmGzjEoQrOwUTPSO+/YetDMf4qxhaUuAJMAfDt7jufLzRJ8hvqCblxio58xiD0Pf2oXmqW1QpbgnkHmq8eFRltIFsI4HN7nw0L3NZYkHygBdtlG3vV25jrneNo+lJi4kIwWeSD157GmTBXZEkjereFHX8SUHHS6CFh3Ygzwe9MHi2y1zLnKqWK6HjbcIys310hjQXAgahtyRTDmt1Ey+4WMAD06MpHPrRilZPL3SOX2cbcuCLepdJgGYgjbY9Peun+H8WbmEX4hDMF8x6SOp6dN65xlbgWwQedyR61Qza4yoQGIHMSYPQbVnSvJSVGCOXinezqNzG27YJWHcjyhd9M8M0cCkHx3lii8LiFtTHzMSSHYAcT7cwBA4rzwnj/hprChieh6AdV7GR+VO174d+0bbiVdQVJ3IJ6j/ABAz9qqnnlhyb6FyZOezlC3nUglZjnf9Kecou2MabYa0UCCHad3g9QDsB6Uk491t6kJ8ykqfdSQat+G81KcGGG+/Uf2a1ZMXKPJLZSqTs6jbytLSuMO4RipKgmRq4Gx9f0pEweNvXmPxrhI1eZIAEqd5A5379qPZdmBa3IYAqZMmIB5I9KR7WZk3XKhod3ZYBMhmJGwE7zWXHinKMlQ85t0dPS6v7O6oGV94ZCVIUrG0cMDuD60mZ/kF0APbuO7NGvVJYz11Hmi2TteuEa1KJAmRpJHYA79t4plNtn2QE8cA/nV/g+NKN8xZO+jmOG8I3ydRIT1Zo/rTBl/h8WyGe4zntsqz9pP3FOOGyC43zsFHpBP5bfnVtbWEw4liHYezH/xFdJxQEmwVhsruXB5Vgd+B9D1+lGLeU2rIDX3H+Xv/ANvP3+1DMb4tYyLK6f8AF1/1H9BVPA4N8SxNxy3pvBP86nY/FLsKvm1y8fhYS2QOCfT/ABN0HoKix2EXCJrP72+dxxCDckqpMk7bH9OpvEYi3hLUKADsqqPxtxInj9aT2Fy9cYFWLvG5Y+QkkqNgRpI0n6e9PGHtglP0jMPlxvXl0HV8RQzGI08lSS0kjbf1NOy5cERVtgLo/MnmR6nep8oytLKjSAGIGqOPUD0kk/WrjJ+tRuxUKt3DMhby87qRvxyp96RfFWMf44QMQqx0BKuRqIA26R6fUV0/Nzptux4UFvsK4618uzMTBchmBbZwhPzGVk6THTYEjmKKRCqUDebSRO/AH28w27ekVlSkMCfh6dEnTKSYnqdFZRshXS+Z/QjY0TwOcXLfyv8AQ7VXOFjj6H26VXu4f3quywcsJ4xYQLin9RRvDeJLNzrB/voa5ZDL1r0YkjkD7xUsFI66BbfdLgHvt+lT2rLCIII9wefzrk1nMyvDsv1mieG8R3BxcB99qPIHA6PcQx5hseZHPvI3oPjMjw9wGbYUnqsL+XH5UGw3iy6OQT7GrqeLwfnT7qD+dS0DgxdzHwfcEm2yv2Hyt9J2NVFwF23b3tvIiQUJB9QeIp2TxNhz8yL9iP0NTJneFPQf6mpZwUi3FklB2hSweYMoJ+G7OBsqqZMfl96CZjcx99GRrTgHkb7DsB0rpn/qOFPU/wCr/avTjcL3b31D+lLHFGJZk8iUzk2EyvG21IFlyvqOKo4u3eubPtHSuytjsL3b/V/tUFzG4PaVme7H86P04XyrZm4s5dl2IW2As/fbmnjJsTbNtF+ICwkQAzdZG4BAA70V/wDUcEP/AGk+u/6mth4msWxCKgHoq/0rPl8SOSVtk4sTsX4PN269zWsu7NABMaiTG3vUuH/+HrseXHtb0/mximV/GQ/hn6VUueK7pGyn3JitSpKkHgy3l3hAW1hzP/5HDf8A6oIP1olZye1b5uBR2RVX8zP6UpYjxDcbZriL7tP6UOv5zsf3jt/lED7moqXQeI/tjMLa3+YjqfN+u35VVxPi1QItoPrvH0G1c+GYajx99zVhU1fWgMkhhx2f3XGpnKr9T+Q2+9BLmPLnygnrqb+S8frV7K8KzELz046fWmPC+FohgsDtHB6x6UQN0Ccnyx3IYknYHft1ApyAtYW1rbYblR1JCliBPoCfoatYXBJbWeAo99o/4/KkfPs8+LeRl1fCRhpgeeAJJU8hjzB5AUEeY08YlbZNicU965qB1s4WF30lZhXTSTIBIImNmG8k05ZFlAtA3G81xgNTHcxyFn0nn/ih3hPJjaQXLgGrzaBudCsTPUiW527nvFNdtetSTAkbqtYwrag+f5qLKhQRreQu6iPUaiJPQevpNBKwgLxdjPiMMNb3k+cgnbUDpB08LsZbpE9N+e3cOEWQfOjnzQWgowBB0mAInvPljrTB+0y2zzAZx5zqIJ1P5p367mYhjHEzZZldq9c0ABlbzmQYNtwCw3G86jBmVjuRDPoBFhfCruisvlUiQJiB/p39+vPWsro9u1pAVRsBA3HFZSbCcmxGHJjgf1/v+VUb2FEGmG7h99xzz7/zqndtxPbt3P8Af6ilLBbuW/7PeqLr7Gj2IsfTr/zQm/bg1CA9xFQusmrboa9sWC7AKCT2AqENMMj/AIiKJI9wD5ifpNEsDkbCC/2H8zV05cPw/ag2gpAFcRc6gH6VKrMeba/pRxMtmp7eXd/zFLYQEmHY8JUjYNwN4HpJo/dthROwiguPxBHtTUCwZfu6ek+xNVWzD/B+ZrLgJO9aLZ3oktnr4w/hFQtjrnQAfSrqWtqkS0OIkz+VQGwb+03W6n6V6LDsfMW+9GUwB6LRTCeH7j8LAjbaoQB4PLRyazGWugp2wnhG7O524rbE+D7kzEiP03ogtCHYwxMRR7L8AxAPTr3+lMWX+HdDAkbD0J3+tHMNlq6GWNuSOPaOv/P2lEso+HcEFdSN9yTPpTPisztWtjudgQOkiRPvxA3M8UmXMwGHLgTrZGKTMjSAC0hW4kNMdDt2DYDFO9sXBGt2Zl/dswZhriGEAsWuWx/2jkinivkWQweIc3a/Fu3sjL5lHmJ1MFXbrDdOOhO4q/4b8K/D892CZ1BeYI4JMc7sdvxHvV3Isl+GVu3NJcAhQNUIOARqPJUL7b7mZphFFy9IWjVUHHSt1WKwCtb1wKpZiAByaQJFj8UtpCx/7R+Juij1Nc8zbE62a4zEhvmIJAGjqdLbIy+o4AirecZk164xUH5P3Zgyo0o25JiWLKNgQIAneaEXSCzaLZGyPOsHSV86kSuyoCw2YiXg9KsSoVmOjM4BWW1dA2zqCHGzmQwI9NJABnh5yLKhYtgEks251GdPXSNz3PU8npEUfDGWJJv6TuAElixAAEz0kRHPKntTIaVsKRHuOlZXs/3NZQCJmLH9/UUOxA8rf33rKykYyA9/g/T9aC4yvKyoMVGp08H2V+EDpEzzAnr1r2sqMgz37SwfKPsPWgr/AM6yspWFGy9P76VvcHl+1ZWUUAFY7r9KW8TWVlEhFara0OaysqERKOtW8MonjrXlZUIN+U2l0jyjp0HpTjgUG2w/sCsrKKFZbSpl5rysoila4P5VVXg+3/jWVlEhz3Ph+/vHqLex7bXjt23AP0FTeFP+pY/v/wBu5/4r9h2ryspvRGdMHFSDpWVlIQ3FA/FX/wBs3+dP/wChXtZRXYGc9vMf2p1naYjpHw7m0VvgbSmJUH5huAdv2jisrKtYp0zLf+in+Vf0FTNWVlUoc1asrKyiA//Z',
            fit: BoxFit.fitWidth,
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8kRkoaVB6VBNha0nywQRr24D0NZ8yTHXChQ&usqp=CAU',

                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 100,
                  width: 100,
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6TXgoZD22-pIBgK6vzmO1G8TcWmZ_2Dcorw&usqp=CAU',

                  ),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Text("Atlantic Salmon served with mixed vegetables or risotto",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 100,right: 100),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                    color:Theme.of(context).backgroundColor,

                  border: Border.all(
                    width: 2,
                    color: Colors.grey,
                  )
                ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: (){
                          decrement();
                        }, icon: Icon(Icons.remove)),
                        Text('${widget._add}', style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 20),),
                        IconButton(onPressed: (){
                          increment();
                        }, icon: Icon(Icons.add,)),

                      ],

                )
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){
                  },
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white,
                        border: Border.all(
                            width: 2,
                            color: Colors.grey
                        )
                    ),
                  child: Center(
                    child: Text("\$${widget._price1}.00",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black87)),
                  ),
                  ),
                ),

                InkWell(
                  onTap: (){
                    model=cartProvider.getItem();
                    addinList(ModelDish(widget._dishname,widget._price1,widget._add));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      backgroundColor: Colors.green,
                        content:Center(child: Text("one item added in your cart.",style: TextStyle(fontSize: 18),))));

                  },
                  child: Container(
                    height: 40,
                    width: 260,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.green,
                        border: Border.all(
                            width: 2,
                            color: Colors.green
                        )
                    ),
                  child: Center(
                    child: Text("Add to Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
                  ),
                  ),
                ),
              ],
            )


          ],
        ),
      ),

    );
  }

  void increment(){
    setState(() {
     widget._add++;
      multiply();

    });
  }void decrement(){
    setState(() {
      widget._add--;
      multiply();

    });
  }
  void multiply(){
    setState(() {
      for(int i=0;i<=widget._add;i++){
        widget._price1=widget._price*i;
      }
    });
  }

  void addinList(ModelDish md){
    int c=0;
   // List<ModelDish> modelDish=model;

    for(int i=0;i<model.length;i++){
      if(md.name==model[i].name){
        md.price=model[i].price+md.price;
        md.count=model[i].count+md.count;
        model.removeAt(i);
        model.insert(i,md );
        c=1;
      }
    }
    if(c==0){
      model.add(md);
    }
  }
}