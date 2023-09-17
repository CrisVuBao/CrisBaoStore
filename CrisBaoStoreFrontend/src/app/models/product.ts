export interface Product {
    // các thuộc tính phải trùng với thuộc tính bên c#, viết hoa chữ đầu cũng ko dc
    id : number,
    name : string,
    brand : string,
    type : string,
    description : string,
    pictureUrl : string,
    price: number,
    price_KM: number,
    quantity: number,
    screenSize : string,
    screenTechnology : string,
    rearCamera : string,
    frontCamera : string,
    weight : string,
    sim : string,
    color : string, 
    sound : string,
    chipset : string,
    operatingSystem : string,
    ram : string,
    storage : string,
    battery : string,
    releaseTime : string
}

export interface ProductParams {
    orderBy: string;
    searchTerm?: string;
    types: string[];
    brands: string[];
    pageNumber: number;
    pageSize: number;
}