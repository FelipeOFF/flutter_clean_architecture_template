import '../../../navigation/app_routes.dart';
import '../../../navigation/base_navigation.dart';
import '../ui/not_found_page.dart';

class NotFoundNavigation extends BaseNavigation {
  @override
  Map<String, RouteFactoryBaseNavigation> get listOfPages => {
        AppRoutes.notFound: (context, _) => NotFoundPage(),
      };
}
