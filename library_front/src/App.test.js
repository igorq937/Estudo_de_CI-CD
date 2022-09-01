import { render, screen } from '@testing-library/react';
import App from './App';

test('renders Bem vindo a Biblioteca', () => {
  render(<App />);
  const linkElement = screen.getByText(/Bem vindo a Biblioteca/i);
  expect(linkElement).toBeInTheDocument();
});
