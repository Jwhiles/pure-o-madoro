import React from 'react';
import ReactDOM from 'react-dom';

import { counter as Counter } from './output/Main';

const App = () => <Counter label="something" />

ReactDOM.render(<App />, document.getElementById('root'));

