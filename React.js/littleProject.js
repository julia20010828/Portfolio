import axios from 'axios'
import { useState, useEffect } from 'react'
import './App.css';

function App() {
    const [savedData, setSavedData] = useState([]);  //把即時取得的資料都存到savedData
    const [displayData, setDisplayData] = useState([]); //根據不同條件顯示

    //取即時全部資料
    useEffect(() => {
        fetchData();
    }, []
    )
    const fetchData = () => {
        axios.get('http://opendata2.epa.gov.tw/AQI.json')
            .then((res) => {
                console.log(res.data);
                setSavedData(res.data.slice(0,))
            }
        );
    };

    const allData = () =>{
        setDisplayData(savedData.filter(a=>a['AQI']))
    }

    const badAir = () =>{
        setDisplayData(savedData.filter(a => a['AQI'] > 101)) //101 to 150 不適於敏感人群
                                                            //151 to 200 不健康
    }

    const goodAir = () => {
        setDisplayData(savedData.filter(a=>a['AQI']<51)) //0 to 50 好
    }

     /*btn 觸發fun
     fun 裡面的displayData回傳到map，秀出來
     */
     
    

    return (
        <div>
            <div>
                <br></br>
                &ensp; <button onClick={allData}>取得全部空氣品質資料</button>
                <br></br> <br></br>
                &ensp; <button onClick={badAir}>空氣不太好的地區💩</button>
                <br></br> <br></br>
                &ensp; <button onClick={goodAir}>空氣很ㄅㄧㄤˋ的地區 🤙🏼🤙🏼😎🈹</button>  
            </div>
            <br></br>
           

            <div>            
            <ul>{
                displayData.length ? (
                    
                    displayData.map(d => <li>County: {d['County']} - SiteName: {d['SiteName']} ： { d['AQI']}</li>)
                ) : (<div className="function">pick an action above</div>)    
                }
            </ul>
            </div>
        </div>
    )


}

export default App;