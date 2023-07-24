using my.bookshop as my from '../db/schema';
@impl: './cat-service.js'  //This annotation is not needed if the custom .js file name
                           // is same as this .cds file (i.e catalog-service.js)
service CatalogService {
    @Capabilities: {
        InsertRestrictions.Insertable: false,
        UpdateRestrictions.Updatable : true,
        DeleteRestrictions.Deletable : true
    }
    entity Books   as projection on my.Books;

    @readonly
    entity Authors as projection on my.Authors;

    entity Orders  as projection on my.Orders;

}
