import 'package:get/get.dart';
import 'package:project_flutter_pertama/models/product_model.dart';

class ListProductController extends GetxController {

List<ProductModel> listProduk = [
    ProductModel(
      namaProduk: "Samsung Galaxy Fold",
      harga: "10 juta",
      deskripsi: "HP layar lipat makin canggih, multitasking lancar jaya buat produktivitas harian.",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_H2grMaJ0RbRae7AL5rM85QrRS0lGC7MDtrQoYKoO81Z4DwXsddHJZ6M&s=10", 
      namaToko: "Galaxy Store Kudus",
      review: "Barang ori, pengiriman cepat dan packing bubble wrap tebal!",
      rating: "4.5",
    ),
    ProductModel(
      namaProduk: "iPhone 15 Pro Max",
      harga: "25 juta",
      deskripsi: "Flagship masa depan dengan chipset super kencang dan kamera ultra jernih.",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTppSpjyf1IIK9m08zPclc4f37XWqYaAA7kS57q4P4QxbX7ecfeVYIv4I&s=10", 
      namaToko: "iBox Official",
      review: "Kamera mantap jiwa, video stabil banget no debat.",
      rating: "4.8",
    ),
    ProductModel(
      namaProduk: "Laptop ROG",
      harga: "30 juta",
      deskripsi: "Laptop gaming spek tinggi, libas semua game AAA rata kanan tanpa lag.",
      imageUrl: "https://dlcdnwebimgs.asus.com/gain/9F61B91D-630F-473B-8A9A-A947A2A567B5/w750/h470/fwebp", 
      namaToko: "Kudus Cell",
      review: "Bagus banget, pendinginnya adem dan performa jos!",
      rating: "4.7",
    ),
    ProductModel(
      namaProduk: "PS 5 Slim",
      harga: "8 juta",
      deskripsi: "Konsol game generasi terbaru support 4K 120Hz dan SSD super kencang.",
      imageUrl: "https://cdnpro.eraspace.com/media/catalog/product/s/o/sony_playstation_5_slim_digital_1_1.jpg", 
      namaToko: "GameStation Central",
      review: "Grafik tajam parah, stik DualSense-nya berasa banget getarannya.",
      rating: "4.6",
    ),
    ProductModel(
      namaProduk: "Smart TV Android",
      harga: "10 juta",
      deskripsi: "TV Android 55 inch bezelless, gambar tajam dan udah built-in Netflix & YouTube.",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSslI3RIAjKOsich69RLKoX5pP2LpcCQvAdHbOazV_1Sw&s=10", 
      namaToko: "Elektronik Muria",
      review: "Suara jernih, aplikasi lancar dan gak pernah nge-lag.",
      rating: "4.4",
    ),
    ProductModel(
      namaProduk: "POCO F9 Ultra",
      harga: "14 juta",
      deskripsi: "HP gaming murah meriah, layar AMOLED 185Hz dan baterai awet seharian.",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjbbjPAW4y-sbwwNcf04vgRTzYZMRV3uKiTzQ1rbQJYBiLcgRbMtFAZECS&s=10", 
      namaToko: "Kudus Cell",
      review: "HP high-end dengan performa gaming yang luar biasa.",
      rating: "4.4",
    ),
  ];

}