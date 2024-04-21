import axios from 'axios';
const Api = axios.create({
    baseURL: 'http://127.0.0.1:3000/api/v1'
    });
export default Api;