import 'sqlite_db.dart';

class LocalProductsRepo{
  
  
  Future<Map<String, dynamic>> deleteData(Map<String, dynamic> dataToSend, String source)async {
    DBManger dbManger = DBManger();
  int id = dataToSend['id'] as int;

  int rowsAffected = await dbManger.delete("DELETE FROM ${DBManger.TBL_PRODUCTS} WHERE ${DBManger.COL_ID} = $id");
  return {'rowsAffected': rowsAffected};
  }
  
  Future<List> getData({required String source, List<String>? columns})async {
    DBManger dbManger = DBManger();
    return await dbManger.fetch("select * from ${DBManger.TBL_PRODUCTS}");
  }
  
  
  Future<Map<String, dynamic>> addData(Map<String, dynamic> dataToSend, String source) async {
    // Product p;
    DBManger dbManger = DBManger();

    Map<String, dynamic> prodcutRow = dataToSend;
    // p.toJson();
    // List<Map<String, dynamic>> sub_images = [];
       int id = await dbManger.insert(source, prodcutRow,mainTable_id:DBManger.COL_ID);
       Map<String, dynamic> responce = {"id": id};
    return responce;
  }
  
  Future<Map<String, dynamic>> editData(Map<String, dynamic> dataToSend, String source) {
    throw UnimplementedError();
  }
  

}
