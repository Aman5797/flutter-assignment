import 'package:flutter_assignment/models/apiResult/api_result.dart';
import 'package:flutter_assignment/models/productDataModel/product_data_model.dart';
import 'package:flutter_assignment/services/apiService/api_repository.dart';
import 'package:flutter_assignment/services/apiService/rest_client.dart';
import 'package:flutter_assignment/utils/api_path.dart';
import 'package:flutter_assignment/utils/app_keys.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  late MockRestClient mockRestClient;
  late ApiRepository apiRepo;
  late Map<String, dynamic> params;
  late int id;

  setUp(() {
    mockRestClient = MockRestClient();
    apiRepo = ApiRepository(mockRestClient);
    params = {
      ApiKeys.page: 1,
      ApiKeys.perPage: 1,
    };
    id = 1;
  });

  group('ApiRepository - ', () {
    group('getProductList function', () {
      test(
        'Success Case: given ApiRepository class when getProductList function is called and ApiState is success then a List<ProductDataModel> should be returned',
        () async {
          // Arrange
          when(
            () => mockRestClient.getDioAsyncWithParams(ApiPath.beers, params),
          ).thenAnswer((invocation) async {
            return ApiResult(
              apiState: ApiState.success,
              data: MocData.successResponse,
            );
          });
          // Act
          final data = await apiRepo.getProductList(params);
          // Assert
          expect(data.data, isA<List<ProductDataModel>>());
          expect(data.data?.length, 1);
        },
      );

      test(
        'Failed Case: given ApiRepository class when getProductList function is called and ApiState is failed then a null should be returned',
        () async {
          // Arrange
          when(
            () => mockRestClient.getDioAsyncWithParams(ApiPath.beers, params),
          ).thenAnswer((invocation) async {
            return ApiResult(
              apiState: ApiState.failed,
              data: MocData.failedResponse,
            );
          });
          // Act
          final data = await apiRepo.getProductList(params);
          // Assert
          expect(data.data, isNull);
        },
      );
    });

    group('getProductDetail function', () {
      test(
        'Success Case: given ApiRepository class when getProductDetail function is called and ApiState is success then a ProductDataModel should be returned',
        () async {
          // Arrange
          when(
            () => mockRestClient.getDioAsync('${ApiPath.beers}/$id'),
          ).thenAnswer((invocation) async {
            return ApiResult(
              apiState: ApiState.success,
              data: MocData.successResponse,
            );
          });
          // Act
          final data = await apiRepo.getProductDetail(id);
          // Assert
          expect(data.data, isA<ProductDataModel>());
        },
      );

      test(
        'Failed Case: given ApiRepository class when getProductDetail function is called and ApiState is failed then a null should be returned',
        () async {
          // Arrange
          when(
            () => mockRestClient.getDioAsync('${ApiPath.beers}/$id'),
          ).thenAnswer((invocation) async {
            return ApiResult(
              apiState: ApiState.failed,
              data: MocData.failedResponse,
            );
          });
          // Act
          final data = await apiRepo.getProductDetail(id);
          // Assert
          expect(data.data, isNull);
        },
      );
    });
  });
}

class MockRestClient extends Mock implements RestClient {}

class MockProductDataModel extends Mock implements ProductDataModel {}

class MocData {
  static const successResponse = [
    {
      "id": 1,
      "name": "Buzz",
      "tagline": "A Real Bitter Experience.",
      "first_brewed": "09/2007",
      "description":
          "A light, crisp and bitter IPA brewed with English and American hops. A small batch brewed only once.",
      "image_url": "https://images.punkapi.com/v2/keg.png",
      "abv": 4.5,
      "ibu": 60,
      "target_fg": 1010,
      "target_og": 1044,
      "ebc": 20,
      "srm": 10,
      "ph": 4.4,
      "attenuation_level": 75,
      "volume": {"value": 20, "unit": "litres"},
      "boil_volume": {"value": 25, "unit": "litres"},
      "method": {
        "mash_temp": [
          {
            "temp": {"value": 64, "unit": "celsius"},
            "duration": 75
          }
        ],
        "fermentation": {
          "temp": {"value": 19, "unit": "celsius"}
        },
        "twist": null
      },
      "ingredients": {
        "malt": [
          {
            "name": "Maris Otter Extra Pale",
            "amount": {"value": 3.3, "unit": "kilograms"}
          },
          {
            "name": "Caramalt",
            "amount": {"value": 0.2, "unit": "kilograms"}
          },
          {
            "name": "Munich",
            "amount": {"value": 0.4, "unit": "kilograms"}
          }
        ],
        "hops": [
          {
            "name": "Fuggles",
            "amount": {"value": 25, "unit": "grams"},
            "add": "start",
            "attribute": "bitter"
          },
          {
            "name": "First Gold",
            "amount": {"value": 25, "unit": "grams"},
            "add": "start",
            "attribute": "bitter"
          },
          {
            "name": "Fuggles",
            "amount": {"value": 37.5, "unit": "grams"},
            "add": "middle",
            "attribute": "flavour"
          },
          {
            "name": "First Gold",
            "amount": {"value": 37.5, "unit": "grams"},
            "add": "middle",
            "attribute": "flavour"
          },
          {
            "name": "Cascade",
            "amount": {"value": 37.5, "unit": "grams"},
            "add": "end",
            "attribute": "flavour"
          }
        ],
        "yeast": "Wyeast 1056 - American Ale™"
      },
      "food_pairing": [
        "Spicy chicken tikka masala",
        "Grilled chicken quesadilla",
        "Caramel toffee cake"
      ],
      "brewers_tips":
          "The earthy and floral aromas from the hops can be overpowering. Drop a little Cascade in at the end of the boil to lift the profile with a bit of citrus.",
      "contributed_by": "Sam Mason <samjbmason>"
    }
  ];

  static const failedResponse = {
    "statusCode": 400,
    "error": "Bad Request",
    "message": "Invalid query params",
    "data": [
      {
        "location": "query",
        "param": "per_page",
        "msg": "Must be a number greater than 0 and less than 80",
        "value": "-1"
      }
    ]
  };
}
