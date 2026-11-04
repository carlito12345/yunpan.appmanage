import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
import java.io.File;
import java.net.URI;
import java.util.*;
import com.google.zxing.*;
import com.google.zxing.common.HybridBinarizer;
public class QrCheck {
 public static void main(String[] args)throws Exception{
  BufferedImage image=ImageIO.read(new File(args[0]));int w=image.getWidth(),h=image.getHeight();int[] pixels=image.getRGB(0,0,w,h,null,0,w);
  Map<DecodeHintType,Object> hints=new EnumMap<>(DecodeHintType.class);hints.put(DecodeHintType.TRY_HARDER,true);hints.put(DecodeHintType.POSSIBLE_FORMATS,Arrays.asList(BarcodeFormat.QR_CODE));
  Result result=new MultiFormatReader().decode(new BinaryBitmap(new HybridBinarizer(new RGBLuminanceSource(w,h,pixels))),hints);
  URI uri=new URI(result.getText());if(!"http".equals(uri.getScheme())||!args[1].equals(uri.getHost())||uri.getPort()!=Integer.parseInt(args[2])||!"/".equals(uri.getPath())||uri.getQuery()!=null||uri.getUserInfo()!=null)throw new IllegalStateException("Unexpected LAN destination");
  System.out.println("{\"decoded\":true,\"format\":\"QR_CODE\",\"host_matches_displayed_address\":true,\"port\":"+uri.getPort()+",\"path\":\"/\",\"query_or_credentials\":false}");
 }
}
