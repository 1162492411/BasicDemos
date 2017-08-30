package temp;



/**
 * Created by Mo on 2017/6/13.
 */
public class SQLBatchDemo {

    private static final double Z = 0.84;

    public static byte getRateCount(Double u,Double v){
        double n = u + v;//计算加权赞同数与加权反对数之和
        double p = u / n;//计算加权赞同数在总数中的比例
        //计算score(威尔逊置信区间下限)
        if (n == 0 || u == 0) return 0;//若赞同为0或者总和为0快速返回0
        double score = ( p + Math.pow(Z, 2) / ( 2 * n) + Z / (2 * n) * Math.sqrt(4 * n * p * (1 - p) + Math.pow(Z, 2) ) ) / ( 1 + Math.pow(Z,2) / n );
        return (byte)(score * 10) ;
    }


    public static void main(String[] args) {
        System.out.println(getRateCount(0.0,0.0));

    }
}
