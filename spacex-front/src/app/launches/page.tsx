"use client"

import { useQuery, gql } from "@apollo/client"

const getLaunches = gql`
  query getLaunches($offset: Int!) {
    launches(offset: $offset) {
      details
      id
      rocket {
        rocket_name
      }
    }
  }
`

const Component = () => {
  const { loading, error, data } = useQuery(getLaunches, {
    variables: {
      offset: 100,
    },
  })
  if (loading) return "Loading..."
  if (error) return `Error! ${error.message}`
  console.table(data.launches || [])
  return "Hello World"
}

export default Component
