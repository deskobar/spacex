"use client"

import "./globals.css"
import { ApolloProvider } from "@apollo/client"
import { client } from "@/config/gql"

import { ReactNode } from "react"

interface ILayout {
  children: ReactNode
}

const Layout = ({ children }: ILayout) => (
  <html lang="es">
    <body>
      <ApolloProvider client={client}>{children} </ApolloProvider>
    </body>
  </html>
)

export default Layout
