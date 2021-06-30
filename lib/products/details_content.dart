import 'package:flutter/material.dart';
import 'details.dart';

class Detailscontent extends StatefulWidget {


  @override
  _DetailscontentState createState() => _DetailscontentState();
}

class _DetailscontentState extends State<Detailscontent> {

List<Details> morningdetails=[
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),
  Details(name: 'Appam', price: '50', image: 'https://imgr.search.brave.com/AzPtVG66xTV8MiiTbRElQ2pNsoPep5oyZDDFNnh1_so/fit/1200/957/no/1/aHR0cDovLzMuYnAu/YmxvZ3Nwb3QuY29t/Ly1ZNnJ4eXdMYlp5/dy9VSEFxTi1ob1pG/SS9BQUFBQUFBQVk5/ay9FcWNFd3J2Ulhw/WS9zMTYwMC9jdXJy/eStrLmpwZw'),
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),



];

List<Details> lunchdetails=[
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),
  Details(name: 'Appam', price: '50', image: 'https://imgr.search.brave.com/AzPtVG66xTV8MiiTbRElQ2pNsoPep5oyZDDFNnh1_so/fit/1200/957/no/1/aHR0cDovLzMuYnAu/YmxvZ3Nwb3QuY29t/Ly1ZNnJ4eXdMYlp5/dy9VSEFxTi1ob1pG/SS9BQUFBQUFBQVk5/ay9FcWNFd3J2Ulhw/WS9zMTYwMC9jdXJy/eStrLmpwZw'),
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),



];


List<Details> nightdetails=[
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),
  Details(name: 'Appam', price: '50', image: 'https://imgr.search.brave.com/AzPtVG66xTV8MiiTbRElQ2pNsoPep5oyZDDFNnh1_so/fit/1200/957/no/1/aHR0cDovLzMuYnAu/YmxvZ3Nwb3QuY29t/Ly1ZNnJ4eXdMYlp5/dy9VSEFxTi1ob1pG/SS9BQUFBQUFBQVk5/ay9FcWNFd3J2Ulhw/WS9zMTYwMC9jdXJy/eStrLmpwZw'),
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),
  Details(name: 'Puttu', price: '60', image: 'https://imgr.search.brave.com/r7buPqMxmu_PULo1rpUEJNo_Y3onXNW38G4gSqdPlMg/fit/711/225/no/1/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/UjBlOGdzUE41LVB4/NUI1eHhzc193SGFF/OCZwaWQ9QXBp'),



];


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
