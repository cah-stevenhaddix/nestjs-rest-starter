import { Module, Logger } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { HttpModule } from '@nestjs/axios';
import { SquareService } from './square/square.service';
import { PrismaService } from './prisma/prisma.service';
@Module({
  imports: [
    HttpModule,
    ConfigModule.forRoot()
  ],
  providers: [Logger, SquareService, PrismaService],
})
export class AppModule {}
