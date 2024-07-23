import React, { useEffect, useState } from 'react'
import { useNavigate, useParams } from 'react-router-dom'
import { getAllCate, getAllProduct } from '../api/apis';
import ProductContainer from '../components/ProductContainer';
import { getService } from '../api/services';

export default function ProductList() {
    const { searchParam } = useParams()
    const [search, setSearch] = useState(searchParam??"")
    const [products, setProducts] = useState([]);
    const [category, setCate] = useState([])
    const [seletedCate, setSelectedCate] = useState("")
    const navigate = useNavigate();
    useEffect(() => {
      getService(`${getAllProduct}${search.trim()!=""?`&search=${search}`:''}${seletedCate.trim()!=""?`&category=${seletedCate}`:''}`).then((result) => setProducts(result.data));
      getService(getAllCate).then((result) => setCate(result.data));
    }, [search, seletedCate]);
  return (
    <div className='py-20'>
      <div className='flex px-20 mb-10 justify-between items-center'>
        <input placeholder='Tên sản phẩm' className='px-3 w-1/5 py-1 rounded-md border border-neutral-500' value={search} onChange={(event) => setSearch(event.target.value)}/>
        <div>
          <div className='text-sm mb-1'>Loại cây</div>
          <select className='px-3 py-1 rounded-md border border-neutral-500' value={seletedCate} onChange={(event) => setSelectedCate(event.target.value)}>
            <option value={""}>Tất cả</option>
            {category?.map(c => <option value={c.categoryID}>{c.name}</option>)}
          </select>
        </div>
      </div>

      <div className="flex flex-wrap px-40">
        {products?.map((pro, index) => (
          <div onClick={() => navigate(`/productDetail/${pro.productId}`)} key={index} className="w-1/4 px-5 mb-10">
            <ProductContainer product={pro} />
          </div>
        ))}
      </div>
    </div>
  )
}
