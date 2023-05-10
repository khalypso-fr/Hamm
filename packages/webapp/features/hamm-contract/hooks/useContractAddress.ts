import { Address, useNetwork } from "wagmi";

const contractAddresses = {
  250: process.env.NEXT_PUBLIC_CONTRACT_ADDRESS_250,
  31337: process.env.NEXT_PUBLIC_CONTRACT_ADDRESS_31337,
  42161: process.env.NEXT_PUBLIC_CONTRACT_ADDRESS_42161,
  421613: process.env.NEXT_PUBLIC_CONTRACT_ADDRESS_421613,
  4002: process.env.NEXT_PUBLIC_CONTRACT_ADDRESS_4002,
} as Record<number, Address>;

export const useContractAddress = (chainId?: number) => {
  const { chain } = useNetwork();
  const contractChainId = chainId ?? chain?.id;
  const contractAddress =
    contractChainId !== undefined
      ? contractAddresses[contractChainId]
      : undefined;
  return contractAddress;
};
