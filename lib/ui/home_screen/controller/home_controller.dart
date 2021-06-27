import 'package:app_flutter_challenge/ui/home_screen/model/image_net.dart';

class HomeController {
  static List<ImageNet> getImages() {
    return [
      ImageNet(
        name: "Image 01",
        url:
            "https://l13.alamy.com/360/PN8GKH/state-art-and-sculpture-museum-and-gallery-akdeniz-vr-mersin-6cf-PN8GKH.jpg",
        latitude: 10.2,
        longitude: 10.4,
      ),
      ImageNet(
        name: "Image 02",
        url: "https://l13.alamy.com/360/PMY031/british-museum-PMY031.jpg",
        latitude: -10.2,
        longitude: -10.4,
      ),
      ImageNet(
        name: "Image 03",
        url: "https://cdn.eso.org/images/publicationjpg/cafeteria-pano.jpg",
        latitude: -10.2,
        longitude: -10.4,
      ),
      ImageNet(
        name: "Image 04",
        url:
            "https://cdn.eso.org/images/publicationjpg/2017_10_26_Old_Bulding_Cafeteria_360-CC.jpg",
        latitude: -10.2,
        longitude: -10.4,
      ),
      ImageNet(
        name: "Image 05",
        url:
            "https://images.unsplash.com/photo-1596263576925-d90d63691097?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1439&q=80",
        latitude: -10.2,
        longitude: -140.4,
      ),
      ImageNet(
        name: "Image 06",
        url:
            "https://l13.alamy.com/360/R8RWM2/grodno-belarus-january-26-2016-panorama-in-interior-stylish-modern-fast-food-cafe-full-spherical-360-by-180-degrees-seamless-panorama-in-equirec-R8RWM2.jpg",
        latitude: -10.2,
        longitude: -10.4,
      ),
    ];
  }
}
