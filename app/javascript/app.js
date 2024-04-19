import React, { Fragment } from 'react';
import 'bulma.min.css';
import { BrowserRouter } from 'react-router-dom';
import 'app.scss';
import Routes from './routes';
import Menu from './components/common/menu';

const App = () => {
    return(

           <Fragment>
               <BrowserRouter>
                   <Menu />
                   <Routes />
               </BrowserRouter>
           </Fragment>

    )
}
export default App;