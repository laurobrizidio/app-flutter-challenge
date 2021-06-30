import 'package:app_flutter_challenge/ui/home_screen/model/image_net.dart';

class HomeController {
  static List<ImageNet> getImages() {
    return [
      ImageNet(
        name: "Museu Paris",
        url:
            "https://l13.alamy.com/360/PN8GKH/state-art-and-sculpture-museum-and-gallery-akdeniz-vr-mersin-6cf-PN8GKH.jpg",
        description: "Museu localizado em Paris",
        latitude: 10.2,
        longitude: 30.4,
      ),
      ImageNet(
        name: "British Museum",
        url: "https://l13.alamy.com/360/PMY031/british-museum-PMY031.jpg",
        description: "Museu da Inglaterra",
        latitude: -12.2,
        longitude: -25.4,
      ),
      ImageNet(
        name: "Cafeteria Pano",
        url: "https://cdn.eso.org/images/publicationjpg/cafeteria-pano.jpg",
        description: "Financiamento coletivo para a Cafeteria Pano",
        latitude: -10.2,
        longitude: -10.4,
      ),
      ImageNet(
        name: "Cafeteria Building",
        url:
            "https://cdn.eso.org/images/publicationjpg/2017_10_26_Old_Bulding_Cafeteria_360-CC.jpg",
        description:
            "Financiamento Coletivo para finalizar a construção da cafeteria.",
        latitude: -10.2,
        longitude: -10.4,
      ),
      ImageNet(
        name: "Beach Praia",
        url:
            "https://images.unsplash.com/photo-1596263576925-d90d63691097?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1439&q=80",
        description: "Praia do Caribe",
        latitude: -10.2,
        longitude: -140.4,
      ),
      ImageNet(
        name: "Belarus Museum",
        url:
            "https://l13.alamy.com/360/R8RWM2/grodno-belarus-january-26-2016-panorama-in-interior-stylish-modern-fast-food-cafe-full-spherical-360-by-180-degrees-seamless-panorama-in-equirec-R8RWM2.jpg",
        description: "Museu de Belarus",
        latitude: -5.2,
        longitude: -70.4,
      ),
    ];
  }
}
