.class public final synthetic Lcom/android/apksig/internal/asn1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/apksig/internal/asn1/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/apksig/internal/asn1/a;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;

    check-cast p2, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;

    invoke-static {p1, p2}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->a(Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;)I

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;

    check-cast p2, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;

    invoke-static {p1, p2}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->a(Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
