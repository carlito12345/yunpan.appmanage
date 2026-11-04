.class public final synthetic Lcom/hierynomus/smbfs/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hierynomus/smbfs/a;->a:I

    iput-object p2, p0, Lcom/hierynomus/smbfs/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/hierynomus/smbfs/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/hierynomus/smbfs/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, [I

    .line 9
    .line 10
    aget p1, v0, p1

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/hierynomus/smbfs/a;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/hierynomus/smbfs/SmbPath;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/hierynomus/smbfs/SmbPath;->a(Lcom/hierynomus/smbfs/SmbPath;I)Ljava/nio/file/Path;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
