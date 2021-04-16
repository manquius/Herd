import 'bootstrap/dist/css/bootstrap.min.css';
import Jumbotron from 'react-bootstrap/Jumbotron';
import Container from 'react-bootstrap/Container';
import LoginTab from './loginForm.js';

function App() {
  return (
    <div className="App">
      <Container className="p-3">
        <Jumbotron>
          <header className="App-header">
              Herd
          </header>
        </Jumbotron>
        <div className="LogIn">
          <LoginTab/>
        </div>
      </Container>
    </div>
  );
}

export default App;
