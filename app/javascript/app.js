import React, { Fragment } from 'react';
import 'bulma.min.css';
import 'app.scss';
import Routes from './routes';
import { BrowserRouter } from 'react-router-dom'

const App = () => {
    return(

           <Fragment>
               <BrowserRouter>
                      <Routes/>
               </BrowserRouter>
           </Fragment>

    )
}
export default App;