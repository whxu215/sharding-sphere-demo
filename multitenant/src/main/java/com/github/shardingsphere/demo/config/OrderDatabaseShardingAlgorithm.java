package com.github.shardingsphere.demo.config;

import lombok.extern.slf4j.Slf4j;
import org.apache.shardingsphere.api.sharding.standard.PreciseShardingAlgorithm;
import org.apache.shardingsphere.api.sharding.standard.PreciseShardingValue;

import java.util.Arrays;
import java.util.Collection;

@Slf4j
public class OrderDatabaseShardingAlgorithm implements PreciseShardingAlgorithm<String> {
    @Override
    public String doSharding(Collection<String> availableTargetNames, PreciseShardingValue<String> shardingValue) {
        log.info("availableTargetNames:{},shardingValue:{}",
                Arrays.toString(availableTargetNames.toArray(new String[0])), shardingValue.getValue());
        return "ds" + Math.abs(shardingValue.getValue().hashCode() % 2);
    }
}
