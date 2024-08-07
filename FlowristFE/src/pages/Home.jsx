import React, { useState } from "react";
import { homeBanner, momMilTopics } from "../data/data";
import apphich from "../assets/apphich.png";
import OtherProducts from "../components/OtherProducts";
import BannerMilMom from "../assets/bannerMilMom.png";
import SliderReact from "../components/Slider";
import flowerBanner2 from "../assets/flowerBanner2.jpg";
import { useNavigate } from "react-router-dom";

export default function Home() {
  const [search, setSearch] = useState("");
  const navigate = useNavigate();
  return (
    <div className="py-20 px-10">
      <input
        value={search}
        onChange={(event) => setSearch(event.target.value)}
        onKeyDown={(event) => {
          if (event.key === "Enter") {
            navigate(`/productList/${search}`)
          }
        }}
        className="block m-auto w-4/6 rounded-xl border-2 border-green-300 shadow-lg p-2 text-neutral-500 mb-20"
        placeholder="Tìm gì hôm nay ?"
      />

      <div className="w-full bg-green-300 rounded-xl py-10 px-20 mb-10">
        <div className="text-4xl font-medium mb-20">Các loại sản phẩm </div>

        <div className="flex">
          {homeBanner.map((banner, index) => (
            <div key={index} className="w-1/3">
              <div className="text-center text-3xl font-medium mb-10">
                {index + 1}. {banner.content}
              </div>
              <div className="w-1/2 bg-white rounded-xl m-auto">
                <img className="rounded-xl" src={banner.imageURL} />
              </div>
            </div>
          ))}
        </div>
      </div>

      

      <OtherProducts />

      {/* <div className="my-10">
        <div className="text-4xl mb-10 font-medium ">
          Các chủ đề dành cho mẹ và bé
        </div>
        <div className="flex">
          <div className="w-1/4 rounded-xl p-5 bg-green-300">
            <div className="font-bold mb-10">6 chủ đề dành cho mẹ và bé</div>
            {momMilTopics.map((topic, index) => (
              <div className="mb-5">
                {index + 1}. {topic.content}
              </div>
            ))}
          </div>
          <div className="flex flex-wrap w-3/4 pl-5">
            {momMilTopics.map((topic) => (
              <div className="w-1/3 px-5 mb-2">
                <img src={topic.imageURL} className="rounded-xl mb-2" />
                <div className="text-sm text-neutral-500">{topic.content}</div>
              </div>
            ))}
          </div>
        </div>
      </div> */}

      <div className="px-80">
        <img className="w-full rounded-xl" src={flowerBanner2} />
      </div>
    </div>
  );
}
