import 'package:dio/dio.dart';
import 'package:kino/core/data/models/people/peopleResponse/people_response.dart';
import 'package:retrofit/http.dart';
import 'package:kino/core/data/models/people/peopleDetails/people_details.dart';
import 'package:kino/core/data/models/images/response/images_response.dart';

part "people_client.g.dart";

@RestApi()
abstract class PeopleClient{
  factory PeopleClient(Dio dio) => _PeopleClient(dio);

  @GET("/person/{person_id}")
  Future<PeopleDetails> getPersonDetails(@Path("person_id") String personId);

  @GET(" /person/popular")
  Future<PeopleResponse> getPopularPeople({@Query("page") int page = 1});

  @GET("/person/{person_id}/images")
  Future<ImagesResponse> getImages(@Path("person_id") String personId);
}