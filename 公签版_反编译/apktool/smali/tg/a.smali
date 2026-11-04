.class public final Ltg/a;
.super Ltg/b;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ltg/a;->c:I

    invoke-direct {p0, p2}, Ltg/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public varargs N0([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 1

    .line 1
    iget v0, p0, Ltg/a;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ltg/b;->N0([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_0
    iget-object p1, p0, Ltg/b;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Ljava/io/InputStream;

    .line 14
    .line 15
    return-object p1

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public O0()Ljava/nio/file/Path;
    .locals 1

    .line 1
    iget v0, p0, Ltg/a;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ltg/b;->O0()Ljava/nio/file/Path;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Ltg/b;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/io/File;

    .line 14
    .line 15
    invoke-static {v0}, Lvb/t;->d(Ljava/io/File;)Ljava/nio/file/Path;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
