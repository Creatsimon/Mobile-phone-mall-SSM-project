package com.fx.alipayConfig;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *������AlipayConfig
 *���ܣ�����������
 *��ϸ�������ʻ��й���Ϣ������·��
 *�޸����ڣ�2017-04-05
 *˵����
 *���´���ֻ��Ϊ�˷����̻����Զ��ṩ���������룬�̻����Ը����Լ���վ����Ҫ�����ռ����ĵ���д,����һ��Ҫʹ�øô��롣
 *�ô������ѧϰ���о�֧�����ӿ�ʹ�ã�ֻ���ṩһ���ο���
 */

public class AlipayConfig2 {

//�����������������������������������Ļ�����Ϣ������������������������������

	// Ӧ��ID,����APPID���տ��˺ż�������APPID��Ӧ֧�����˺�
	public static String app_id = "2021000118685869";

	// �̻�˽Կ������PKCS8��ʽRSA2˽Կ
    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQDN/I29aLkXBX0Gq8e5OX7OKK6RYCdB1Ji6vb+IJTPGViueARJU243MrxjYLUswHOucWHchOx/2zbWuh2ojTUMFlM150FS3uuFkWEc86I0x3Syo3CGfp79SYm0j8PqOBxMPosl7rgbDak4MDwZ26BWGSA3vfXOgZNwGAoeckwjks2w+fD3yGaBGoHvNPeUgS/utG6jdU82c6/SAL/amhosgRVS2I01yk9Z3ycIQaeffkjmoWbyHmvZ26IvIYxLwPUs2uGI/SANphnM7NhnSeOiSb0Lg3N3DMu8dzfU8dt677XBVCFLaOUyrH0t/QNuWJIljlQjg5Op2sFPq9eDtAZePAgMBAAECggEANVQIQhxFpv8lwj9g4sRO3wLLRxnUsAdhTx9m4dF32QZgHnT6kPuSd4ZxcS4wxBEIsp54oSLUgKn7OmcWhHMxQdWnaL0V4cdBKSBtuQgf3eP79u+eyN29+4894Es4IuMT/T1Q2nNQjvELqbWOH+SwBebLrNAWylSyXd/zygaLC+IsyJr1DCBzOnj0nt2NL9NJ8aX+uMpoLaGpZQKeSG2anbJYkcRMiAreToUgolE6ry5XzAPTvA0b6cqR07YcCqdgtbauesKR8YBttVPjTi6g9QhBfQN8wdFsj3D1OsZF+yzp1dpGsn03zqVUtwgXIvMmHqR7kX28CQ1Qs/pkvpTpEQKBgQDvJSiDbz2v50/jS01F345InI7iezyfOVcl/YgRYhUzQIxHVvQe/slarSvkVKv9jGfA7BZXweDa9V0KGd+67wIIPQc8hX4W4AH0AH+WbuzEMjicyG88MEE+nReNEQSR+vREqHR73MsEMBE9poNhQeLkTIpdo+i1TPe3Os5uc8Zg9wKBgQDcgR9B4WTMQKcrf6i2Gw8O3JZdigMCRVEi18CqdARr6Al3xX+v5zV/jsFtLzaXDCFzAvjJZZaAAmuZ2T5ZfK0UsuCoK7+fjnnXdAYQNITOopzwOCD08kDCs3nolrNF3en2LNrdyHzmJ0x32anYflFZvj0yIFfnv8RibbCDArBwKQKBgE727hG4QZ47ut1KmBFiaBEB4QxXtQS+YlBhDvTudiGeRrOnuqQhbUtLsxqJ+uCV5AyH6DjCBAVIz5fuQznugbVGsYUCb0gOX5a6M2bw6a0/CAJ9DH3LUT/jj0s9O00YmF+zYAMmPML9PDQnL2qF3u2TeHzDCqwS5hjSiidegzqxAoGAEW6PxwiHjHIsBQ9Rihv3g8hChuCLPlm2gVenHpKPauxsGzDc2E4h95SUjAooeaZ22n3IpztFu5b1ZLM875wgnrtJcWIMAxQjY7oDZLKSMTe/ymnViSfBoOLJZ27Ke2KAxXpkTxYzcYp3zB3EBJ5v1fVpJxZRfLu3TcS4KJNE2YkCgYAa7DMi32NupTDeRMXVLxmIKOzd6pH5nnivFPvdOno+/aL9CgmqG1scw3SiXnBkXt8r2WftOm2qQT8Q/g/Woi90yYlCUdsnSR3W4XngPxte1K9fx6TwmhiwBBjTrNEjfZxSETJucoSeTqx2lgqJmjxCsNIfF1bjcCkZX/3y9ut9FQ==";

    // ֧������Կ,�鿴��ַ��https://openhome.alipay.com/platform/keyManage.htm ��ӦAPPID�µ�֧������Կ��
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhzpyzDzIiljSv/KIynv4FizxjIi2Ab3+EIpIt6JWS7ViKaQDo1fj9ilNUhaPRyVjXSKv1S9kTsRsBvjG1Ysa54QaHPlu/N5s8V0doLt15uKt2dlXTNaY1PYuFYF1ysMrze7jz+eZ4jElST4ElDBvaxY3VtZzJsbVub8m9egGFElEonPetFwFz42i98ZVutIpK3bsKSkLJ3FJ+gAjas4enr2JOmcBCvkH8LxuaT62/kZ1ku6S4QJgyCdf+pJCJ6e2skqRzjUDhL9iRpVEu+afyvs/ubFYglPbr2NjuRFgTpJdL7I2wixJmwhCtWc9/liDFmp2xepLkewfZf7m8WueawIDAQAB";

    // �������첽֪ͨҳ��·��  ��http://��ʽ������·�������ܼ�?id=123�����Զ����������������������������
	public static String notify_url = "http://localhost:8080/Finally_war/order/updateOrderIsPay";

	// ҳ����תͬ��֪ͨҳ��·�� ��http://��ʽ������·�������ܼ�?id=123�����Զ����������������������������
	public static String return_url = "http://localhost:8080/Finally_war/order/updateOrderIsPay";

	// ǩ����ʽ
	public static String sign_type = "RSA2";

	// �ַ������ʽ
	public static String charset = "utf-8";

	// ֧��������
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

	// ֧��������
	public static String log_path = "C:\\";


//�����������������������������������Ļ�����Ϣ������������������������������

    /**
     * д��־��������ԣ�����վ����Ҳ���ԸĳɰѼ�¼�������ݿ⣩
     * @param sWord Ҫд����־����ı�����
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

