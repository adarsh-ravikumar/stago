import app from './app';
import { serverConfig } from '@config/server';

app.listen(serverConfig.port, () => {
  console.log(`Listening on http://localhost:${serverConfig.port}`);
});
