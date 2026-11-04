.class public La1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/leanback/widget/l0;
.implements Landroidx/media3/exoplayer/video/h0;
.implements Lvc/g;
.implements Ld2/o;
.implements Lokhttp3/Callback;
.implements Lg2/e;
.implements Lt0/f;
.implements Lb6/a;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, La1/i;->a:I

    sparse-switch p1, :sswitch_data_0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 7
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p1, Lha/l2;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lha/l2;-><init>(I)V

    iput-object p1, p0, La1/i;->b:Ljava/lang/Object;

    return-void

    .line 9
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 11
    sget-object p1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 12
    invoke-static {p1}, La2/a;->k(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, La1/i;->b:Ljava/lang/Object;

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La1/i;->a:I

    iput-object p2, p0, La1/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1

    const/16 v0, 0x1b

    iput v0, p0, La1/i;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lh4/c0;

    invoke-direct {v0, p1, p2, p3, p0}, Lh4/c0;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;La1/i;)V

    iput-object v0, p0, La1/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, La1/i;->a:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 18
    new-instance v0, La1/g;

    invoke-direct {v0, p1, p2, p3}, La1/g;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, La1/i;->b:Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lv3/f;

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lv3/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    iput-object v0, p0, La1/i;->b:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const/16 v0, 0x1c

    iput v0, p0, La1/i;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lb1/o;->f(Landroid/view/ViewGroup;)Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iput-object p1, p0, La1/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/e;)V
    .locals 1

    const/16 v0, 0x17

    iput v0, p0, La1/i;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, La1/i;->b:Ljava/lang/Object;

    const v0, 0x7fffffff

    .line 15
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;I[B[Ljava/util/UUID;)V
    .locals 0

    const/16 p2, 0x16

    iput p2, p0, La1/i;->a:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, La1/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public static q(ILjava/io/InputStream;)I
    .locals 2

    .line 1
    and-int/lit16 v0, p0, 0x80

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    and-int/lit8 p0, p0, 0x7f

    .line 7
    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    const/4 p0, -0x1

    .line 11
    return p0

    .line 12
    :cond_1
    if-ltz p0, :cond_4

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    if-le p0, v0, :cond_2

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_2
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-lez p0, :cond_3

    .line 20
    .line 21
    shl-int/lit8 v0, v0, 0x8

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    and-int/lit16 v1, v1, 0xff

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    add-int/lit8 p0, p0, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    move p0, v0

    .line 34
    :goto_1
    return p0

    .line 35
    :cond_4
    :goto_2
    new-instance p1, Ljava/io/IOException;

    .line 36
    .line 37
    const-string v0, "DerInputStream.getLength(): lengthTag="

    .line 38
    .line 39
    const-string v1, ", "

    .line 40
    .line 41
    invoke-static {v0, p0, v1}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-gez p0, :cond_5

    .line 46
    .line 47
    const-string p0, "incorrect DER encoding."

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_5
    const-string p0, "too big."

    .line 51
    .line 52
    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_5

    .line 63
    :goto_4
    throw p1

    .line 64
    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public A()[I
    .locals 5

    .line 1
    sget v0, Lcom/yunpan/appmanage/carsdk/m;->e:I

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :try_start_0
    const-string v3, "com.desay.libsvcarinfo.ICarInfo"

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Landroid/os/IBinder;

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I

    .line 36
    .line 37
    .line 38
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public B(Lcom/yunpan/appmanage/carsdk/l;[I)V
    .locals 4

    .line 1
    sget v0, Lcom/yunpan/appmanage/carsdk/m;->e:I

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :try_start_0
    const-string v3, "com.desay.libsvcarinfo.ICarInfo"

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, La1/i;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Landroid/os/IBinder;

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-interface {p1, p2, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public C(Lb2/d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public D(Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, La1/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/view/ViewGroupOverlay;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lb1/o;->w(Landroid/view/ViewGroupOverlay;Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lh4/c0;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-object p1, v0, Lh4/c0;->c:Ljava/util/ArrayList;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    :cond_0
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, v0, Lh4/c0;->e:Z

    .line 39
    .line 40
    iget-object p1, v0, Lh4/c0;->a:Landroid/view/ViewGroup;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public E(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public F()V
    .locals 10

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, La1/i;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v3, Lcom/yunpan/appmanage/carsdk/q;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/yunpan/appmanage/carsdk/q;->b:Lcom/yunpan/appmanage/carsdk/f;

    .line 10
    .line 11
    iget-object v3, v3, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lcom/yunpan/appmanage/carsdk/r;

    .line 14
    .line 15
    iget-object v4, v3, Lcom/yunpan/appmanage/carsdk/r;->j:Ljava/lang/Object;

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v4, "android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback"

    .line 21
    .line 22
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    new-array v6, v2, [Ljava/lang/Class;

    .line 31
    .line 32
    aput-object v4, v6, v1

    .line 33
    .line 34
    new-instance v4, Lcom/yunpan/appmanage/carsdk/n;

    .line 35
    .line 36
    const/16 v7, 0xb

    .line 37
    .line 38
    invoke-direct {v4, v3, v7}, Lcom/yunpan/appmanage/carsdk/n;-><init>(Lcom/yunpan/appmanage/carsdk/r;I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v5, v6, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iput-object v4, v3, Lcom/yunpan/appmanage/carsdk/r;->j:Ljava/lang/Object;

    .line 46
    .line 47
    :goto_0
    new-array v4, v0, [I

    .line 48
    .line 49
    fill-array-data v4, :array_0

    .line 50
    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    :goto_1
    if-ge v5, v0, :cond_2

    .line 54
    .line 55
    aget v6, v4, v5

    .line 56
    .line 57
    invoke-virtual {v3, v6}, Lcom/yunpan/appmanage/carsdk/r;->q(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    if-nez v7, :cond_1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    const-string v8, "getPropertyId"

    .line 65
    .line 66
    new-array v9, v1, [Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {v7, v8, v9}, Lcom/yunpan/appmanage/carsdk/r;->r(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    check-cast v7, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    iget-object v9, v3, Lcom/yunpan/appmanage/carsdk/r;->x:Lj$/util/concurrent/ConcurrentHashMap;

    .line 79
    .line 80
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v9, v7, v6}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    iget-object v6, v3, Lcom/yunpan/appmanage/carsdk/r;->j:Ljava/lang/Object;

    .line 88
    .line 89
    invoke-virtual {v3, v8, v6}, Lcom/yunpan/appmanage/carsdk/r;->t(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :goto_2
    add-int/2addr v5, v2

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    return-void

    .line 95
    :array_0
    .array-data 4
        0x41020400
        0x41020100
        0x41020200
        0x41020300
        0x41020800
        0x41020500
        0x41020600
        0x41030100
        0x41030600
        0x41030800
        0x41030700
        0x41030900
        0x21111400
    .end array-data
.end method

.method public G(IJJ)V
    .locals 5

    .line 1
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld3/f;

    .line 4
    .line 5
    iget-object v1, v0, Ld3/f;->j0:Ll2/q;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/16 v1, 0xa0

    .line 11
    .line 12
    if-eq p1, v1, :cond_c

    .line 13
    .line 14
    const/16 v1, 0xae

    .line 15
    .line 16
    if-eq p1, v1, :cond_b

    .line 17
    .line 18
    const/16 v1, 0xb7

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    const-wide/16 v3, -0x1

    .line 22
    .line 23
    if-eq p1, v1, :cond_a

    .line 24
    .line 25
    const/16 v1, 0xbb

    .line 26
    .line 27
    if-eq p1, v1, :cond_9

    .line 28
    .line 29
    const/16 v1, 0x4dbb

    .line 30
    .line 31
    if-eq p1, v1, :cond_8

    .line 32
    .line 33
    const/16 v1, 0x5035

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eq p1, v1, :cond_7

    .line 37
    .line 38
    const/16 v1, 0x55d0

    .line 39
    .line 40
    if-eq p1, v1, :cond_6

    .line 41
    .line 42
    const v1, 0x18538067

    .line 43
    .line 44
    .line 45
    if-eq p1, v1, :cond_3

    .line 46
    .line 47
    const p2, 0x1c53bb6b

    .line 48
    .line 49
    .line 50
    if-eq p1, p2, :cond_2

    .line 51
    .line 52
    const p2, 0x1f43b675

    .line 53
    .line 54
    .line 55
    if-eq p1, p2, :cond_0

    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :cond_0
    iget-boolean p1, v0, Ld3/f;->z:Z

    .line 60
    .line 61
    if-nez p1, :cond_d

    .line 62
    .line 63
    iget-boolean p1, v0, Ld3/f;->d:Z

    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    iget-wide p1, v0, Ld3/f;->K:J

    .line 68
    .line 69
    cmp-long p3, p1, v3

    .line 70
    .line 71
    if-eqz p3, :cond_1

    .line 72
    .line 73
    iput-boolean v2, v0, Ld3/f;->J:Z

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :cond_1
    iget-object p1, v0, Ld3/f;->j0:Ll2/q;

    .line 78
    .line 79
    new-instance p2, Ll2/s;

    .line 80
    .line 81
    iget-wide p3, v0, Ld3/f;->v:J

    .line 82
    .line 83
    invoke-direct {p2, p3, p4}, Ll2/s;-><init>(J)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, p2}, Ll2/q;->s(Ll2/c0;)V

    .line 87
    .line 88
    .line 89
    iput-boolean v2, v0, Ld3/f;->z:Z

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    iget-boolean p1, v0, Ld3/f;->z:Z

    .line 93
    .line 94
    if-nez p1, :cond_d

    .line 95
    .line 96
    iput-boolean v2, v0, Ld3/f;->D:Z

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    iget-wide v1, v0, Ld3/f;->s:J

    .line 100
    .line 101
    cmp-long p1, v1, v3

    .line 102
    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    cmp-long p1, v1, p2

    .line 106
    .line 107
    if-nez p1, :cond_4

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    const-string p1, "Multiple Segment elements not supported"

    .line 111
    .line 112
    const/4 p2, 0x0

    .line 113
    invoke-static {p2, p1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    throw p1

    .line 118
    :cond_5
    :goto_0
    iput-wide p2, v0, Ld3/f;->s:J

    .line 119
    .line 120
    iput-wide p4, v0, Ld3/f;->r:J

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 124
    .line 125
    .line 126
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 127
    .line 128
    iput-boolean v2, p1, Ld3/e;->z:Z

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_7
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 132
    .line 133
    .line 134
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 135
    .line 136
    iput-boolean v2, p1, Ld3/e;->i:Z

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_8
    iput v2, v0, Ld3/f;->A:I

    .line 140
    .line 141
    iput-wide v3, v0, Ld3/f;->B:J

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_9
    iget-boolean p2, v0, Ld3/f;->z:Z

    .line 145
    .line 146
    if-nez p2, :cond_d

    .line 147
    .line 148
    invoke-virtual {v0, p1}, Ld3/f;->h(I)V

    .line 149
    .line 150
    .line 151
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    iput-wide p1, v0, Ld3/f;->E:J

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_a
    iget-boolean p2, v0, Ld3/f;->z:Z

    .line 160
    .line 161
    if-nez p2, :cond_d

    .line 162
    .line 163
    invoke-virtual {v0, p1}, Ld3/f;->h(I)V

    .line 164
    .line 165
    .line 166
    iput v2, v0, Ld3/f;->F:I

    .line 167
    .line 168
    iput-wide v3, v0, Ld3/f;->G:J

    .line 169
    .line 170
    iput-wide v3, v0, Ld3/f;->H:J

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_b
    new-instance p1, Ld3/e;

    .line 174
    .line 175
    invoke-direct {p1}, Ld3/e;-><init>()V

    .line 176
    .line 177
    .line 178
    iput-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 179
    .line 180
    iget-boolean p2, v0, Ld3/f;->w:Z

    .line 181
    .line 182
    iput-boolean p2, p1, Ld3/e;->a:Z

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_c
    const/4 p1, 0x0

    .line 186
    iput-boolean p1, v0, Ld3/f;->Y:Z

    .line 187
    .line 188
    const-wide/16 p1, 0x0

    .line 189
    .line 190
    iput-wide p1, v0, Ld3/f;->Z:J

    .line 191
    .line 192
    :cond_d
    :goto_1
    return-void
.end method

.method public H(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld3/f;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x86

    .line 9
    .line 10
    if-eq p1, v1, :cond_5

    .line 11
    .line 12
    const/16 v1, 0x4282

    .line 13
    .line 14
    if-eq p1, v1, :cond_2

    .line 15
    .line 16
    const/16 v1, 0x536e

    .line 17
    .line 18
    if-eq p1, v1, :cond_1

    .line 19
    .line 20
    const v1, 0x22b59c

    .line 21
    .line 22
    .line 23
    if-eq p1, v1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 30
    .line 31
    iput-object p2, p1, Ld3/e;->Z:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 38
    .line 39
    iput-object p2, p1, Ld3/e;->b:Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const-string p1, "webm"

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_4

    .line 49
    .line 50
    const-string v1, "matroska"

    .line 51
    .line 52
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v0, "DocType "

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p2, " not supported"

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const/4 p2, 0x0

    .line 79
    invoke-static {p2, p1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    throw p1

    .line 84
    :cond_4
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iput-boolean p1, v0, Ld3/f;->w:Z

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 92
    .line 93
    .line 94
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 95
    .line 96
    iput-object p2, p1, Ld3/e;->c:Ljava/lang/String;

    .line 97
    .line 98
    :goto_1
    return-void
.end method

.method public I(Lcom/yunpan/appmanage/carsdk/l;)V
    .locals 4

    .line 1
    sget v0, Lcom/yunpan/appmanage/carsdk/m;->e:I

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :try_start_0
    const-string v3, "com.desay.libsvcarinfo.ICarInfo"

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, La1/i;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Landroid/os/IBinder;

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public J(Landroid/view/inputmethod/EditorInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lr1/b1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh4/t;

    .line 4
    .line 5
    invoke-virtual {v0}, Lh4/t;->cancel()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public create()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lh5/j;

    .line 2
    .line 3
    iget-object v1, p0, La1/i;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/room/s;

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, La6/i;

    .line 10
    .line 11
    iget-object v1, v1, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lv3/f;

    .line 14
    .line 15
    invoke-direct {v0, v2, v1}, Lh5/j;-><init>(La6/i;Lv3/f;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public d(ILx1/c;JI)V
    .locals 7

    .line 1
    iget-object v3, p2, Lx1/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 2
    .line 3
    iget-object p2, p0, La1/i;->b:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroid/media/MediaCodec;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v1, p1

    .line 10
    move-wide v4, p3

    .line 11
    move v6, p5

    .line 12
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/hierynomus/security/jce/a;->q(Landroid/media/MediaCodec;Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f()V
    .locals 7

    .line 1
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/media3/exoplayer/video/m;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/media3/exoplayer/video/m;->R1:Landroid/view/Surface;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/media3/exoplayer/video/m;->B1:La2/j0;

    .line 10
    .line 11
    iget-object v3, v2, La2/j0;->b:Landroid/os/Handler;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    new-instance v6, Landroidx/media3/exoplayer/video/f0;

    .line 20
    .line 21
    invoke-direct {v6, v2, v1, v4, v5}, Landroidx/media3/exoplayer/video/f0;-><init>(La2/j0;Ljava/lang/Object;J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, v0, Landroidx/media3/exoplayer/video/m;->U1:Z

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public g(IIJI)V
    .locals 7

    .line 1
    const/4 v2, 0x0

    .line 2
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Landroid/media/MediaCodec;

    .line 5
    .line 6
    move v1, p1

    .line 7
    move v3, p2

    .line 8
    move-wide v4, p3

    .line 9
    move v6, p5

    .line 10
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public h()V
    .locals 0

    .line 1
    return-void
.end method

.method public i(II[B)I
    .locals 5

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    invoke-static {v0, p3}, Lrd/a;->a(I[B)I

    .line 4
    .line 5
    .line 6
    add-int/lit8 v0, p1, 0x4

    .line 7
    .line 8
    invoke-static {v0, p3}, Lrd/a;->b(I[B)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    add-int/lit8 v1, p1, 0x8

    .line 13
    .line 14
    invoke-static {v1, p3}, Lrd/a;->b(I[B)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/lit8 v2, p1, 0xc

    .line 19
    .line 20
    invoke-static {v2, p3}, Lrd/a;->b(I[B)I

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, p1, 0x10

    .line 24
    .line 25
    invoke-static {v2, p3}, Lrd/a;->b(I[B)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-lez v0, :cond_0

    .line 30
    .line 31
    add-int/2addr v0, p1

    .line 32
    new-instance v3, Lvd/m;

    .line 33
    .line 34
    invoke-direct {v3, p3, v0}, Lvd/m;-><init>([BI)V

    .line 35
    .line 36
    .line 37
    :cond_0
    if-lez v1, :cond_1

    .line 38
    .line 39
    add-int/2addr v1, p1

    .line 40
    new-instance v0, Lvd/m;

    .line 41
    .line 42
    invoke-direct {v0, p3, v1}, Lvd/m;-><init>([BI)V

    .line 43
    .line 44
    .line 45
    :cond_1
    add-int v0, p1, v2

    .line 46
    .line 47
    if-lez v2, :cond_3

    .line 48
    .line 49
    add-int/lit8 v1, v0, 0x2

    .line 50
    .line 51
    invoke-static {v1, p3}, Lrd/a;->a(I[B)I

    .line 52
    .line 53
    .line 54
    add-int/lit8 v1, v0, 0x4

    .line 55
    .line 56
    invoke-static {v1, p3}, Lrd/a;->b(I[B)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/lit8 v0, v0, 0x8

    .line 61
    .line 62
    const/16 v2, 0x1000

    .line 63
    .line 64
    if-gt v1, v2, :cond_2

    .line 65
    .line 66
    new-array v2, v1, [Lcd/a;

    .line 67
    .line 68
    iput-object v2, p0, La1/i;->b:Ljava/lang/Object;

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    :goto_0
    if-ge v2, v1, :cond_4

    .line 72
    .line 73
    iget-object v3, p0, La1/i;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v3, [Lcd/a;

    .line 76
    .line 77
    new-instance v4, Lcd/a;

    .line 78
    .line 79
    invoke-direct {v4}, Lcd/a;-><init>()V

    .line 80
    .line 81
    .line 82
    aput-object v4, v3, v2

    .line 83
    .line 84
    sub-int v3, p2, v0

    .line 85
    .line 86
    invoke-virtual {v4, v0, v3, p3}, Lcd/a;->i(II[B)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    add-int/2addr v0, v3

    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    new-instance p1, Lad/g;

    .line 95
    .line 96
    const-string p2, "Invalid SecurityDescriptor"

    .line 97
    .line 98
    invoke-direct {p1, p2}, Lad/g;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_3
    const/4 p2, 0x0

    .line 103
    iput-object p2, p0, La1/i;->b:Ljava/lang/Object;

    .line 104
    .line 105
    :cond_4
    sub-int/2addr v0, p1

    .line 106
    return v0
.end method

.method public j(Lb2/d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public k(Landroid/view/View;)V
    .locals 6

    .line 1
    iget v0, p0, La1/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/view/ViewGroupOverlay;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lb1/o;->o(Landroid/view/ViewGroupOverlay;Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lh4/c0;

    .line 17
    .line 18
    iget-boolean v1, v0, Lh4/c0;->e:Z

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/view/ViewGroup;

    .line 35
    .line 36
    iget-object v2, v0, Lh4/c0;->a:Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eq v1, v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    invoke-static {v1}, Lx0/b1;->l(Landroid/view/View;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    new-array v4, v3, [I

    .line 54
    .line 55
    new-array v3, v3, [I

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 61
    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    aget v5, v4, v2

    .line 65
    .line 66
    aget v2, v3, v2

    .line 67
    .line 68
    sub-int/2addr v5, v2

    .line 69
    invoke-static {v5, p1}, Lx0/b1;->o(ILandroid/view/View;)V

    .line 70
    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    aget v4, v4, v2

    .line 74
    .line 75
    aget v2, v3, v2

    .line 76
    .line 77
    sub-int/2addr v4, v2

    .line 78
    invoke-static {v4, p1}, Lx0/b1;->p(ILandroid/view/View;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    const-string v0, "This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()"

    .line 100
    .line 101
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public l(IILl2/l;)V
    .locals 19

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    iget-object v4, v3, La1/i;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Ld3/f;

    .line 12
    .line 13
    iget-object v5, v4, Ld3/f;->c:Landroid/util/SparseArray;

    .line 14
    .line 15
    const/4 v6, 0x4

    .line 16
    const/4 v7, 0x2

    .line 17
    const/4 v12, 0x1

    .line 18
    const/4 v13, 0x0

    .line 19
    const/16 v8, 0xa1

    .line 20
    .line 21
    const/16 v9, 0xa3

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    if-eq v0, v8, :cond_b

    .line 25
    .line 26
    if-eq v0, v9, :cond_b

    .line 27
    .line 28
    const/16 v8, 0xa5

    .line 29
    .line 30
    if-eq v0, v8, :cond_8

    .line 31
    .line 32
    const/16 v5, 0x41ed

    .line 33
    .line 34
    if-eq v0, v5, :cond_5

    .line 35
    .line 36
    const/16 v5, 0x4255

    .line 37
    .line 38
    if-eq v0, v5, :cond_4

    .line 39
    .line 40
    const/16 v5, 0x47e2

    .line 41
    .line 42
    if-eq v0, v5, :cond_3

    .line 43
    .line 44
    const/16 v5, 0x53ab

    .line 45
    .line 46
    if-eq v0, v5, :cond_2

    .line 47
    .line 48
    const/16 v5, 0x63a2

    .line 49
    .line 50
    if-eq v0, v5, :cond_1

    .line 51
    .line 52
    const/16 v5, 0x7672

    .line 53
    .line 54
    if-ne v0, v5, :cond_0

    .line 55
    .line 56
    invoke-virtual {v4, v0}, Ld3/f;->i(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, v4, Ld3/f;->y:Ld3/e;

    .line 60
    .line 61
    new-array v4, v1, [B

    .line 62
    .line 63
    iput-object v4, v0, Ld3/e;->x:[B

    .line 64
    .line 65
    invoke-virtual {v2, v4, v13, v1, v13}, Ll2/l;->b([BIIZ)Z

    .line 66
    .line 67
    .line 68
    goto/16 :goto_12

    .line 69
    .line 70
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "Unexpected id: "

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v10, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    throw v0

    .line 89
    :cond_1
    invoke-virtual {v4, v0}, Ld3/f;->i(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v4, Ld3/f;->y:Ld3/e;

    .line 93
    .line 94
    new-array v4, v1, [B

    .line 95
    .line 96
    iput-object v4, v0, Ld3/e;->l:[B

    .line 97
    .line 98
    invoke-virtual {v2, v4, v13, v1, v13}, Ll2/l;->b([BIIZ)Z

    .line 99
    .line 100
    .line 101
    goto/16 :goto_12

    .line 102
    .line 103
    :cond_2
    iget-object v0, v4, Ld3/f;->k:Lu1/q;

    .line 104
    .line 105
    iget-object v5, v0, Lu1/q;->a:[B

    .line 106
    .line 107
    invoke-static {v5, v13}, Ljava/util/Arrays;->fill([BB)V

    .line 108
    .line 109
    .line 110
    iget-object v5, v0, Lu1/q;->a:[B

    .line 111
    .line 112
    rsub-int/lit8 v6, v1, 0x4

    .line 113
    .line 114
    invoke-virtual {v2, v5, v6, v1, v13}, Ll2/l;->b([BIIZ)Z

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v13}, Lu1/q;->O(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lu1/q;->D()J

    .line 121
    .line 122
    .line 123
    move-result-wide v0

    .line 124
    long-to-int v1, v0

    .line 125
    iput v1, v4, Ld3/f;->A:I

    .line 126
    .line 127
    goto/16 :goto_12

    .line 128
    .line 129
    :cond_3
    new-array v5, v1, [B

    .line 130
    .line 131
    invoke-virtual {v2, v5, v13, v1, v13}, Ll2/l;->b([BIIZ)Z

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v0}, Ld3/f;->i(I)V

    .line 135
    .line 136
    .line 137
    iget-object v0, v4, Ld3/f;->y:Ld3/e;

    .line 138
    .line 139
    new-instance v1, Ll2/i0;

    .line 140
    .line 141
    invoke-direct {v1, v12, v5, v13, v13}, Ll2/i0;-><init>(I[BII)V

    .line 142
    .line 143
    .line 144
    iput-object v1, v0, Ld3/e;->k:Ll2/i0;

    .line 145
    .line 146
    goto/16 :goto_12

    .line 147
    .line 148
    :cond_4
    invoke-virtual {v4, v0}, Ld3/f;->i(I)V

    .line 149
    .line 150
    .line 151
    iget-object v0, v4, Ld3/f;->y:Ld3/e;

    .line 152
    .line 153
    new-array v4, v1, [B

    .line 154
    .line 155
    iput-object v4, v0, Ld3/e;->j:[B

    .line 156
    .line 157
    invoke-virtual {v2, v4, v13, v1, v13}, Ll2/l;->b([BIIZ)Z

    .line 158
    .line 159
    .line 160
    goto/16 :goto_12

    .line 161
    .line 162
    :cond_5
    invoke-virtual {v4, v0}, Ld3/f;->i(I)V

    .line 163
    .line 164
    .line 165
    iget-object v0, v4, Ld3/f;->y:Ld3/e;

    .line 166
    .line 167
    iget v4, v0, Ld3/e;->h:I

    .line 168
    .line 169
    const v5, 0x64767643

    .line 170
    .line 171
    .line 172
    if-eq v4, v5, :cond_7

    .line 173
    .line 174
    const v5, 0x64766343

    .line 175
    .line 176
    .line 177
    if-ne v4, v5, :cond_6

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_6
    invoke-virtual {v2, v1, v13}, Ll2/l;->o(IZ)Z

    .line 181
    .line 182
    .line 183
    goto/16 :goto_12

    .line 184
    .line 185
    :cond_7
    :goto_0
    new-array v4, v1, [B

    .line 186
    .line 187
    iput-object v4, v0, Ld3/e;->P:[B

    .line 188
    .line 189
    invoke-virtual {v2, v4, v13, v1, v13}, Ll2/l;->b([BIIZ)Z

    .line 190
    .line 191
    .line 192
    goto/16 :goto_12

    .line 193
    .line 194
    :cond_8
    iget v0, v4, Ld3/f;->O:I

    .line 195
    .line 196
    if-eq v0, v7, :cond_9

    .line 197
    .line 198
    goto/16 :goto_12

    .line 199
    .line 200
    :cond_9
    iget v0, v4, Ld3/f;->U:I

    .line 201
    .line 202
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Ld3/e;

    .line 207
    .line 208
    iget v5, v4, Ld3/f;->X:I

    .line 209
    .line 210
    if-ne v5, v6, :cond_a

    .line 211
    .line 212
    const-string v5, "V_VP9"

    .line 213
    .line 214
    iget-object v0, v0, Ld3/e;->c:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_a

    .line 221
    .line 222
    iget-object v0, v4, Ld3/f;->p:Lu1/q;

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Lu1/q;->L(I)V

    .line 225
    .line 226
    .line 227
    iget-object v0, v0, Lu1/q;->a:[B

    .line 228
    .line 229
    invoke-virtual {v2, v0, v13, v1, v13}, Ll2/l;->b([BIIZ)Z

    .line 230
    .line 231
    .line 232
    goto/16 :goto_12

    .line 233
    .line 234
    :cond_a
    invoke-virtual {v2, v1, v13}, Ll2/l;->o(IZ)Z

    .line 235
    .line 236
    .line 237
    goto/16 :goto_12

    .line 238
    .line 239
    :cond_b
    iget v8, v4, Ld3/f;->O:I

    .line 240
    .line 241
    const/16 v11, 0x8

    .line 242
    .line 243
    iget-object v14, v4, Ld3/f;->i:Lu1/q;

    .line 244
    .line 245
    if-nez v8, :cond_c

    .line 246
    .line 247
    iget-object v8, v4, Ld3/f;->b:Ld3/h;

    .line 248
    .line 249
    invoke-virtual {v8, v2, v13, v12, v11}, Ld3/h;->c(Ll2/l;ZZI)J

    .line 250
    .line 251
    .line 252
    move-result-wide v9

    .line 253
    long-to-int v10, v9

    .line 254
    iput v10, v4, Ld3/f;->U:I

    .line 255
    .line 256
    iget v8, v8, Ld3/h;->c:I

    .line 257
    .line 258
    iput v8, v4, Ld3/f;->V:I

    .line 259
    .line 260
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    iput-wide v8, v4, Ld3/f;->Q:J

    .line 266
    .line 267
    iput v12, v4, Ld3/f;->O:I

    .line 268
    .line 269
    invoke-virtual {v14, v13}, Lu1/q;->L(I)V

    .line 270
    .line 271
    .line 272
    :cond_c
    iget v8, v4, Ld3/f;->U:I

    .line 273
    .line 274
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    move-object v10, v5

    .line 279
    check-cast v10, Ld3/e;

    .line 280
    .line 281
    if-nez v10, :cond_d

    .line 282
    .line 283
    iget v0, v4, Ld3/f;->V:I

    .line 284
    .line 285
    sub-int v0, v1, v0

    .line 286
    .line 287
    invoke-virtual {v2, v0, v13}, Ll2/l;->o(IZ)Z

    .line 288
    .line 289
    .line 290
    iput v13, v4, Ld3/f;->O:I

    .line 291
    .line 292
    goto/16 :goto_12

    .line 293
    .line 294
    :cond_d
    iget-object v5, v10, Ld3/e;->a0:Ll2/j0;

    .line 295
    .line 296
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    iget v5, v4, Ld3/f;->O:I

    .line 300
    .line 301
    if-ne v5, v12, :cond_23

    .line 302
    .line 303
    const/4 v5, 0x3

    .line 304
    invoke-virtual {v4, v2, v5}, Ld3/f;->m(Ll2/l;I)V

    .line 305
    .line 306
    .line 307
    iget-object v8, v14, Lu1/q;->a:[B

    .line 308
    .line 309
    aget-byte v8, v8, v7

    .line 310
    .line 311
    and-int/lit8 v8, v8, 0x6

    .line 312
    .line 313
    shr-int/2addr v8, v12

    .line 314
    const/16 v9, 0xff

    .line 315
    .line 316
    if-nez v8, :cond_10

    .line 317
    .line 318
    iput v12, v4, Ld3/f;->S:I

    .line 319
    .line 320
    iget-object v6, v4, Ld3/f;->T:[I

    .line 321
    .line 322
    if-nez v6, :cond_e

    .line 323
    .line 324
    new-array v6, v12, [I

    .line 325
    .line 326
    goto :goto_1

    .line 327
    :cond_e
    array-length v8, v6

    .line 328
    if-lt v8, v12, :cond_f

    .line 329
    .line 330
    goto :goto_1

    .line 331
    :cond_f
    array-length v6, v6

    .line 332
    mul-int/lit8 v6, v6, 0x2

    .line 333
    .line 334
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    .line 335
    .line 336
    .line 337
    move-result v6

    .line 338
    new-array v6, v6, [I

    .line 339
    .line 340
    :goto_1
    iput-object v6, v4, Ld3/f;->T:[I

    .line 341
    .line 342
    iget v8, v4, Ld3/f;->V:I

    .line 343
    .line 344
    sub-int/2addr v1, v8

    .line 345
    sub-int/2addr v1, v5

    .line 346
    aput v1, v6, v13

    .line 347
    .line 348
    :goto_2
    move-object v13, v10

    .line 349
    goto/16 :goto_b

    .line 350
    .line 351
    :cond_10
    invoke-virtual {v4, v2, v6}, Ld3/f;->m(Ll2/l;I)V

    .line 352
    .line 353
    .line 354
    iget-object v15, v14, Lu1/q;->a:[B

    .line 355
    .line 356
    aget-byte v15, v15, v5

    .line 357
    .line 358
    and-int/2addr v15, v9

    .line 359
    add-int/2addr v15, v12

    .line 360
    iput v15, v4, Ld3/f;->S:I

    .line 361
    .line 362
    iget-object v11, v4, Ld3/f;->T:[I

    .line 363
    .line 364
    if-nez v11, :cond_11

    .line 365
    .line 366
    new-array v11, v15, [I

    .line 367
    .line 368
    goto :goto_3

    .line 369
    :cond_11
    array-length v5, v11

    .line 370
    if-lt v5, v15, :cond_12

    .line 371
    .line 372
    goto :goto_3

    .line 373
    :cond_12
    array-length v5, v11

    .line 374
    mul-int/lit8 v5, v5, 0x2

    .line 375
    .line 376
    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    .line 377
    .line 378
    .line 379
    move-result v5

    .line 380
    new-array v11, v5, [I

    .line 381
    .line 382
    :goto_3
    iput-object v11, v4, Ld3/f;->T:[I

    .line 383
    .line 384
    if-ne v8, v7, :cond_13

    .line 385
    .line 386
    iget v5, v4, Ld3/f;->V:I

    .line 387
    .line 388
    sub-int/2addr v1, v5

    .line 389
    sub-int/2addr v1, v6

    .line 390
    iget v5, v4, Ld3/f;->S:I

    .line 391
    .line 392
    div-int/2addr v1, v5

    .line 393
    invoke-static {v11, v13, v5, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 394
    .line 395
    .line 396
    goto :goto_2

    .line 397
    :cond_13
    if-ne v8, v12, :cond_16

    .line 398
    .line 399
    const/4 v5, 0x0

    .line 400
    const/4 v8, 0x0

    .line 401
    :goto_4
    iget v11, v4, Ld3/f;->S:I

    .line 402
    .line 403
    sub-int/2addr v11, v12

    .line 404
    if-ge v5, v11, :cond_15

    .line 405
    .line 406
    iget-object v11, v4, Ld3/f;->T:[I

    .line 407
    .line 408
    aput v13, v11, v5

    .line 409
    .line 410
    :goto_5
    add-int/lit8 v11, v6, 0x1

    .line 411
    .line 412
    invoke-virtual {v4, v2, v11}, Ld3/f;->m(Ll2/l;I)V

    .line 413
    .line 414
    .line 415
    iget-object v15, v14, Lu1/q;->a:[B

    .line 416
    .line 417
    aget-byte v6, v15, v6

    .line 418
    .line 419
    and-int/2addr v6, v9

    .line 420
    iget-object v15, v4, Ld3/f;->T:[I

    .line 421
    .line 422
    aget v16, v15, v5

    .line 423
    .line 424
    add-int v16, v16, v6

    .line 425
    .line 426
    aput v16, v15, v5

    .line 427
    .line 428
    if-eq v6, v9, :cond_14

    .line 429
    .line 430
    add-int v8, v8, v16

    .line 431
    .line 432
    add-int/lit8 v5, v5, 0x1

    .line 433
    .line 434
    move v6, v11

    .line 435
    goto :goto_4

    .line 436
    :cond_14
    move v6, v11

    .line 437
    goto :goto_5

    .line 438
    :cond_15
    iget-object v5, v4, Ld3/f;->T:[I

    .line 439
    .line 440
    iget v15, v4, Ld3/f;->V:I

    .line 441
    .line 442
    sub-int/2addr v1, v15

    .line 443
    sub-int/2addr v1, v6

    .line 444
    sub-int/2addr v1, v8

    .line 445
    aput v1, v5, v11

    .line 446
    .line 447
    goto :goto_2

    .line 448
    :cond_16
    const/4 v5, 0x3

    .line 449
    if-ne v8, v5, :cond_22

    .line 450
    .line 451
    const/4 v5, 0x0

    .line 452
    const/4 v8, 0x0

    .line 453
    :goto_6
    iget v11, v4, Ld3/f;->S:I

    .line 454
    .line 455
    sub-int/2addr v11, v12

    .line 456
    if-ge v5, v11, :cond_1e

    .line 457
    .line 458
    iget-object v11, v4, Ld3/f;->T:[I

    .line 459
    .line 460
    aput v13, v11, v5

    .line 461
    .line 462
    add-int/lit8 v11, v6, 0x1

    .line 463
    .line 464
    invoke-virtual {v4, v2, v11}, Ld3/f;->m(Ll2/l;I)V

    .line 465
    .line 466
    .line 467
    iget-object v15, v14, Lu1/q;->a:[B

    .line 468
    .line 469
    aget-byte v15, v15, v6

    .line 470
    .line 471
    if-eqz v15, :cond_1d

    .line 472
    .line 473
    const/4 v7, 0x0

    .line 474
    :goto_7
    const/16 v15, 0x8

    .line 475
    .line 476
    if-ge v7, v15, :cond_1a

    .line 477
    .line 478
    rsub-int/lit8 v15, v7, 0x7

    .line 479
    .line 480
    shl-int v15, v12, v15

    .line 481
    .line 482
    iget-object v12, v14, Lu1/q;->a:[B

    .line 483
    .line 484
    aget-byte v12, v12, v6

    .line 485
    .line 486
    and-int/2addr v12, v15

    .line 487
    if-eqz v12, :cond_19

    .line 488
    .line 489
    add-int v12, v11, v7

    .line 490
    .line 491
    invoke-virtual {v4, v2, v12}, Ld3/f;->m(Ll2/l;I)V

    .line 492
    .line 493
    .line 494
    iget-object v13, v14, Lu1/q;->a:[B

    .line 495
    .line 496
    aget-byte v6, v13, v6

    .line 497
    .line 498
    and-int/2addr v6, v9

    .line 499
    xor-int/lit8 v13, v15, -0x1

    .line 500
    .line 501
    and-int/2addr v6, v13

    .line 502
    move-object v13, v10

    .line 503
    int-to-long v9, v6

    .line 504
    :goto_8
    if-ge v11, v12, :cond_17

    .line 505
    .line 506
    const/16 v6, 0x8

    .line 507
    .line 508
    shl-long/2addr v9, v6

    .line 509
    iget-object v6, v14, Lu1/q;->a:[B

    .line 510
    .line 511
    add-int/lit8 v17, v11, 0x1

    .line 512
    .line 513
    aget-byte v6, v6, v11

    .line 514
    .line 515
    const/16 v11, 0xff

    .line 516
    .line 517
    and-int/2addr v6, v11

    .line 518
    move/from16 v18, v12

    .line 519
    .line 520
    int-to-long v11, v6

    .line 521
    or-long/2addr v9, v11

    .line 522
    move/from16 v11, v17

    .line 523
    .line 524
    move/from16 v12, v18

    .line 525
    .line 526
    goto :goto_8

    .line 527
    :cond_17
    move/from16 v18, v12

    .line 528
    .line 529
    if-lez v5, :cond_18

    .line 530
    .line 531
    mul-int/lit8 v7, v7, 0x7

    .line 532
    .line 533
    add-int/lit8 v7, v7, 0x6

    .line 534
    .line 535
    const-wide/16 v11, 0x1

    .line 536
    .line 537
    shl-long v6, v11, v7

    .line 538
    .line 539
    sub-long/2addr v6, v11

    .line 540
    sub-long/2addr v9, v6

    .line 541
    :cond_18
    move/from16 v6, v18

    .line 542
    .line 543
    goto :goto_9

    .line 544
    :cond_19
    move-object v13, v10

    .line 545
    add-int/lit8 v7, v7, 0x1

    .line 546
    .line 547
    const/16 v9, 0xff

    .line 548
    .line 549
    const/4 v12, 0x1

    .line 550
    const/4 v13, 0x0

    .line 551
    goto :goto_7

    .line 552
    :cond_1a
    move-object v13, v10

    .line 553
    const-wide/16 v9, 0x0

    .line 554
    .line 555
    move v6, v11

    .line 556
    :goto_9
    const-wide/32 v11, -0x80000000

    .line 557
    .line 558
    .line 559
    cmp-long v7, v9, v11

    .line 560
    .line 561
    if-ltz v7, :cond_1c

    .line 562
    .line 563
    const-wide/32 v11, 0x7fffffff

    .line 564
    .line 565
    .line 566
    cmp-long v7, v9, v11

    .line 567
    .line 568
    if-gtz v7, :cond_1c

    .line 569
    .line 570
    long-to-int v7, v9

    .line 571
    iget-object v9, v4, Ld3/f;->T:[I

    .line 572
    .line 573
    if-nez v5, :cond_1b

    .line 574
    .line 575
    goto :goto_a

    .line 576
    :cond_1b
    add-int/lit8 v10, v5, -0x1

    .line 577
    .line 578
    aget v10, v9, v10

    .line 579
    .line 580
    add-int/2addr v7, v10

    .line 581
    :goto_a
    aput v7, v9, v5

    .line 582
    .line 583
    add-int/2addr v8, v7

    .line 584
    add-int/lit8 v5, v5, 0x1

    .line 585
    .line 586
    move-object v10, v13

    .line 587
    const/4 v7, 0x2

    .line 588
    const/16 v9, 0xff

    .line 589
    .line 590
    const/4 v12, 0x1

    .line 591
    const/4 v13, 0x0

    .line 592
    goto/16 :goto_6

    .line 593
    .line 594
    :cond_1c
    const-string v0, "EBML lacing sample size out of range."

    .line 595
    .line 596
    const/4 v1, 0x0

    .line 597
    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    throw v0

    .line 602
    :cond_1d
    const/4 v1, 0x0

    .line 603
    const-string v0, "No valid varint length mask found"

    .line 604
    .line 605
    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    throw v0

    .line 610
    :cond_1e
    move-object v13, v10

    .line 611
    iget-object v5, v4, Ld3/f;->T:[I

    .line 612
    .line 613
    iget v7, v4, Ld3/f;->V:I

    .line 614
    .line 615
    sub-int/2addr v1, v7

    .line 616
    sub-int/2addr v1, v6

    .line 617
    sub-int/2addr v1, v8

    .line 618
    aput v1, v5, v11

    .line 619
    .line 620
    :goto_b
    iget-object v1, v14, Lu1/q;->a:[B

    .line 621
    .line 622
    const/4 v5, 0x0

    .line 623
    aget-byte v6, v1, v5

    .line 624
    .line 625
    const/16 v5, 0x8

    .line 626
    .line 627
    shl-int/lit8 v5, v6, 0x8

    .line 628
    .line 629
    const/4 v6, 0x1

    .line 630
    aget-byte v1, v1, v6

    .line 631
    .line 632
    const/16 v7, 0xff

    .line 633
    .line 634
    and-int/2addr v1, v7

    .line 635
    or-int/2addr v1, v5

    .line 636
    iget-wide v7, v4, Ld3/f;->M:J

    .line 637
    .line 638
    int-to-long v9, v1

    .line 639
    invoke-virtual {v4, v9, v10}, Ld3/f;->o(J)J

    .line 640
    .line 641
    .line 642
    move-result-wide v9

    .line 643
    add-long/2addr v9, v7

    .line 644
    iput-wide v9, v4, Ld3/f;->P:J

    .line 645
    .line 646
    move-object v1, v13

    .line 647
    iget v5, v1, Ld3/e;->e:I

    .line 648
    .line 649
    if-eq v5, v6, :cond_21

    .line 650
    .line 651
    const/16 v5, 0xa3

    .line 652
    .line 653
    if-ne v0, v5, :cond_1f

    .line 654
    .line 655
    iget-object v5, v14, Lu1/q;->a:[B

    .line 656
    .line 657
    const/4 v6, 0x2

    .line 658
    aget-byte v5, v5, v6

    .line 659
    .line 660
    const/16 v7, 0x80

    .line 661
    .line 662
    and-int/2addr v5, v7

    .line 663
    if-ne v5, v7, :cond_20

    .line 664
    .line 665
    goto :goto_c

    .line 666
    :cond_1f
    const/4 v6, 0x2

    .line 667
    :cond_20
    const/4 v5, 0x0

    .line 668
    goto :goto_d

    .line 669
    :cond_21
    const/4 v6, 0x2

    .line 670
    :goto_c
    const/4 v5, 0x1

    .line 671
    :goto_d
    iput v5, v4, Ld3/f;->W:I

    .line 672
    .line 673
    iput v6, v4, Ld3/f;->O:I

    .line 674
    .line 675
    const/4 v5, 0x0

    .line 676
    iput v5, v4, Ld3/f;->R:I

    .line 677
    .line 678
    :goto_e
    const/16 v5, 0xa3

    .line 679
    .line 680
    goto :goto_f

    .line 681
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 682
    .line 683
    const-string v1, "Unexpected lacing value: "

    .line 684
    .line 685
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    const/4 v1, 0x0

    .line 696
    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    throw v0

    .line 701
    :cond_23
    move-object v1, v10

    .line 702
    goto :goto_e

    .line 703
    :goto_f
    if-ne v0, v5, :cond_25

    .line 704
    .line 705
    :goto_10
    iget v0, v4, Ld3/f;->R:I

    .line 706
    .line 707
    iget v5, v4, Ld3/f;->S:I

    .line 708
    .line 709
    if-ge v0, v5, :cond_24

    .line 710
    .line 711
    iget-object v5, v4, Ld3/f;->T:[I

    .line 712
    .line 713
    aget v0, v5, v0

    .line 714
    .line 715
    const/4 v5, 0x0

    .line 716
    invoke-virtual {v4, v2, v1, v0, v5}, Ld3/f;->p(Ll2/l;Ld3/e;IZ)I

    .line 717
    .line 718
    .line 719
    move-result v10

    .line 720
    iget-wide v5, v4, Ld3/f;->P:J

    .line 721
    .line 722
    iget v0, v4, Ld3/f;->R:I

    .line 723
    .line 724
    iget v7, v1, Ld3/e;->f:I

    .line 725
    .line 726
    mul-int v0, v0, v7

    .line 727
    .line 728
    div-int/lit16 v0, v0, 0x3e8

    .line 729
    .line 730
    int-to-long v7, v0

    .line 731
    add-long/2addr v7, v5

    .line 732
    iget v9, v4, Ld3/f;->W:I

    .line 733
    .line 734
    const/4 v11, 0x0

    .line 735
    move-object v5, v4

    .line 736
    move-object v6, v1

    .line 737
    move-object v0, v1

    .line 738
    invoke-virtual/range {v5 .. v11}, Ld3/f;->j(Ld3/e;JIII)V

    .line 739
    .line 740
    .line 741
    iget v1, v4, Ld3/f;->R:I

    .line 742
    .line 743
    const/4 v5, 0x1

    .line 744
    add-int/2addr v1, v5

    .line 745
    iput v1, v4, Ld3/f;->R:I

    .line 746
    .line 747
    move-object v1, v0

    .line 748
    goto :goto_10

    .line 749
    :cond_24
    const/4 v1, 0x0

    .line 750
    iput v1, v4, Ld3/f;->O:I

    .line 751
    .line 752
    goto :goto_12

    .line 753
    :cond_25
    move-object v0, v1

    .line 754
    const/4 v5, 0x1

    .line 755
    :goto_11
    iget v1, v4, Ld3/f;->R:I

    .line 756
    .line 757
    iget v6, v4, Ld3/f;->S:I

    .line 758
    .line 759
    if-ge v1, v6, :cond_26

    .line 760
    .line 761
    iget-object v6, v4, Ld3/f;->T:[I

    .line 762
    .line 763
    aget v7, v6, v1

    .line 764
    .line 765
    invoke-virtual {v4, v2, v0, v7, v5}, Ld3/f;->p(Ll2/l;Ld3/e;IZ)I

    .line 766
    .line 767
    .line 768
    move-result v7

    .line 769
    aput v7, v6, v1

    .line 770
    .line 771
    iget v1, v4, Ld3/f;->R:I

    .line 772
    .line 773
    add-int/2addr v1, v5

    .line 774
    iput v1, v4, Ld3/f;->R:I

    .line 775
    .line 776
    goto :goto_11

    .line 777
    :cond_26
    :goto_12
    return-void
.end method

.method public m(ID)V
    .locals 2

    .line 1
    const/16 v0, 0xb5

    .line 2
    .line 3
    iget-object v1, p0, La1/i;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ld3/f;

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x4489

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    packed-switch p1, :pswitch_data_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :pswitch_0
    invoke-virtual {v1, p1}, Ld3/f;->i(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v1, Ld3/f;->y:Ld3/e;

    .line 28
    .line 29
    double-to-float p2, p2

    .line 30
    iput p2, p1, Ld3/e;->w:F

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :pswitch_1
    invoke-virtual {v1, p1}, Ld3/f;->i(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, v1, Ld3/f;->y:Ld3/e;

    .line 38
    .line 39
    double-to-float p2, p2

    .line 40
    iput p2, p1, Ld3/e;->v:F

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :pswitch_2
    invoke-virtual {v1, p1}, Ld3/f;->i(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, v1, Ld3/f;->y:Ld3/e;

    .line 48
    .line 49
    double-to-float p2, p2

    .line 50
    iput p2, p1, Ld3/e;->u:F

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_3
    invoke-virtual {v1, p1}, Ld3/f;->i(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, v1, Ld3/f;->y:Ld3/e;

    .line 57
    .line 58
    double-to-float p2, p2

    .line 59
    iput p2, p1, Ld3/e;->O:F

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_4
    invoke-virtual {v1, p1}, Ld3/f;->i(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, v1, Ld3/f;->y:Ld3/e;

    .line 66
    .line 67
    double-to-float p2, p2

    .line 68
    iput p2, p1, Ld3/e;->N:F

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_5
    invoke-virtual {v1, p1}, Ld3/f;->i(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, v1, Ld3/f;->y:Ld3/e;

    .line 75
    .line 76
    double-to-float p2, p2

    .line 77
    iput p2, p1, Ld3/e;->M:F

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :pswitch_6
    invoke-virtual {v1, p1}, Ld3/f;->i(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, v1, Ld3/f;->y:Ld3/e;

    .line 84
    .line 85
    double-to-float p2, p2

    .line 86
    iput p2, p1, Ld3/e;->L:F

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :pswitch_7
    invoke-virtual {v1, p1}, Ld3/f;->i(I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, v1, Ld3/f;->y:Ld3/e;

    .line 93
    .line 94
    double-to-float p2, p2

    .line 95
    iput p2, p1, Ld3/e;->K:F

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_8
    invoke-virtual {v1, p1}, Ld3/f;->i(I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, v1, Ld3/f;->y:Ld3/e;

    .line 102
    .line 103
    double-to-float p2, p2

    .line 104
    iput p2, p1, Ld3/e;->J:F

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_9
    invoke-virtual {v1, p1}, Ld3/f;->i(I)V

    .line 108
    .line 109
    .line 110
    iget-object p1, v1, Ld3/f;->y:Ld3/e;

    .line 111
    .line 112
    double-to-float p2, p2

    .line 113
    iput p2, p1, Ld3/e;->I:F

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :pswitch_a
    invoke-virtual {v1, p1}, Ld3/f;->i(I)V

    .line 117
    .line 118
    .line 119
    iget-object p1, v1, Ld3/f;->y:Ld3/e;

    .line 120
    .line 121
    double-to-float p2, p2

    .line 122
    iput p2, p1, Ld3/e;->H:F

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :pswitch_b
    invoke-virtual {v1, p1}, Ld3/f;->i(I)V

    .line 126
    .line 127
    .line 128
    iget-object p1, v1, Ld3/f;->y:Ld3/e;

    .line 129
    .line 130
    double-to-float p2, p2

    .line 131
    iput p2, p1, Ld3/e;->G:F

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :pswitch_c
    invoke-virtual {v1, p1}, Ld3/f;->i(I)V

    .line 135
    .line 136
    .line 137
    iget-object p1, v1, Ld3/f;->y:Ld3/e;

    .line 138
    .line 139
    double-to-float p2, p2

    .line 140
    iput p2, p1, Ld3/e;->F:F

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_0
    double-to-long p1, p2

    .line 144
    iput-wide p1, v1, Ld3/f;->u:J

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {v1, p1}, Ld3/f;->i(I)V

    .line 148
    .line 149
    .line 150
    iget-object p1, v1, Ld3/f;->y:Ld3/e;

    .line 151
    .line 152
    double-to-int p2, p2

    .line 153
    iput p2, p1, Ld3/e;->S:I

    .line 154
    .line 155
    :goto_0
    return-void

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public n()Lx1/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public o()Lb2/b;
    .locals 1

    .line 1
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lb2/b;

    .line 4
    .line 5
    return-object v0
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 1
    instance-of p2, p2, Ljava/net/SocketTimeoutException;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, La1/i;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p2, Ld9/b;

    .line 8
    .line 9
    iget p2, p2, Ld9/b;->b:I

    .line 10
    .line 11
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ld9/b;

    .line 14
    .line 15
    iget-object v1, v0, Ld9/b;->a:Lm9/e;

    .line 16
    .line 17
    iget v1, v1, Lm9/e;->e:I

    .line 18
    .line 19
    if-ge p2, v1, :cond_0

    .line 20
    .line 21
    iget p1, v0, Ld9/b;->b:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    iput p1, v0, Ld9/b;->b:I

    .line 26
    .line 27
    iget-object p1, p0, La1/i;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Ld9/b;

    .line 30
    .line 31
    iget-object p2, p1, Ld9/b;->a:Lm9/e;

    .line 32
    .line 33
    invoke-virtual {p2}, Lm9/e;->f()Lokhttp3/Call;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iput-object p2, p1, Ld9/b;->d:Lokhttp3/Call;

    .line 38
    .line 39
    iget-object p1, p0, La1/i;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Ld9/b;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, La1/i;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Ld9/b;

    .line 49
    .line 50
    iget-object p1, p1, Ld9/b;->d:Lokhttp3/Call;

    .line 51
    .line 52
    invoke-interface {p1, p0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_1

    .line 61
    .line 62
    const/4 p2, 0x0

    .line 63
    invoke-static {p1, p2}, Lv3/f;->v(Lokhttp3/Call;Lokhttp3/Response;)Lv3/f;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p2, p0, La1/i;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p2, Ld9/b;

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Ld9/b;->b(Lv3/f;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x194

    .line 6
    .line 7
    iget-object v2, p0, La1/i;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ld9/b;

    .line 10
    .line 11
    if-eq v0, v1, :cond_4

    .line 12
    .line 13
    const/16 v1, 0x1f4

    .line 14
    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    iget v0, v2, Ld9/b;->f:I

    .line 19
    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    :goto_0
    const/4 v0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :pswitch_0
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0x130

    .line 30
    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, v2, Ld9/b;->a:Lm9/e;

    .line 35
    .line 36
    iget-object v0, v0, Lm9/e;->g:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, La2/n0;

    .line 39
    .line 40
    const-string v3, "the http response code is 304, but the cache with cacheKey = "

    .line 41
    .line 42
    const-string v4, " is null or expired!"

    .line 43
    .line 44
    invoke-static {v3, v0, v4}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {v1, v0}, La2/n0;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p2}, Lv3/f;->v(Lokhttp3/Call;Lokhttp3/Response;)Lv3/f;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Ld9/a;

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    invoke-direct {v1, v2, v0, v3}, Ld9/a;-><init>(Ld9/b;Lv3/f;I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Ld9/b;->f(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    :goto_1
    if-eqz v0, :cond_2

    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    :try_start_0
    iget-object v0, v2, Ld9/b;->a:Lm9/e;

    .line 69
    .line 70
    iget-object v1, v0, Lm9/e;->l:Lnh/b;

    .line 71
    .line 72
    if-nez v1, :cond_3

    .line 73
    .line 74
    iget-object v1, v0, Lm9/e;->k:Lnh/b;

    .line 75
    .line 76
    iput-object v1, v0, Lm9/e;->l:Lnh/b;

    .line 77
    .line 78
    :cond_3
    iget-object v1, v0, Lm9/e;->l:Lnh/b;

    .line 79
    .line 80
    const-string v3, "converter == null, do you forget to call Request#converter(Converter<T>) ?"

    .line 81
    .line 82
    invoke-static {v1, v3}, Ln9/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, v0, Lm9/e;->l:Lnh/b;

    .line 86
    .line 87
    invoke-interface {v0, p2}, Lf9/a;->t(Lokhttp3/Response;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v2, v1, v0}, Ld9/b;->a(Ld9/b;Lokhttp3/Headers;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    new-instance v1, Lv3/f;

    .line 99
    .line 100
    const/16 v3, 0x13

    .line 101
    .line 102
    const/4 v4, 0x0

    .line 103
    invoke-direct {v1, v3, v4}, Lv3/f;-><init>(IC)V

    .line 104
    .line 105
    .line 106
    iput-object v0, v1, Lv3/f;->b:Ljava/lang/Object;

    .line 107
    .line 108
    iput-object p1, v1, Lv3/f;->c:Ljava/lang/Object;

    .line 109
    .line 110
    iput-object p2, v1, Lv3/f;->d:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-virtual {v2, v1}, Ld9/b;->c(Lv3/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catchall_0
    invoke-static {p1, p2}, Lv3/f;->v(Lokhttp3/Call;Lokhttp3/Response;)Lv3/f;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v2, p1}, Ld9/b;->b(Lv3/f;)V

    .line 121
    .line 122
    .line 123
    :goto_2
    return-void

    .line 124
    :cond_4
    :goto_3
    new-instance v0, Landroidx/fragment/app/b0;

    .line 125
    .line 126
    const-string v1, "network error! http response code is 404 or 5xx!"

    .line 127
    .line 128
    const/4 v3, 0x3

    .line 129
    invoke-direct {v0, v1, v3}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    invoke-static {p1, p2}, Lv3/f;->v(Lokhttp3/Call;Lokhttp3/Response;)Lv3/f;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v2, p1}, Ld9/b;->b(Lv3/f;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public p()V
    .locals 3

    .line 1
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/media3/exoplayer/video/m;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/media3/exoplayer/video/m;->R1:Landroid/view/Surface;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/video/m;->Q0(II)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public r()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lr1/f;->a:Ljava/util/UUID;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/media3/exoplayer/video/m;

    .line 4
    .line 5
    iget-object v0, v0, Ld2/u;->L:Ly1/b0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ly1/b0;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 1
    return-void
.end method

.method public start()V
    .locals 0

    .line 1
    return-void
.end method

.method public t()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, La1/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, [Lcd/a;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "SecurityDescriptor:\n"

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    iget-object v2, p0, La1/i;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, [Lcd/a;

    .line 23
    .line 24
    array-length v2, v2

    .line 25
    if-ge v1, v2, :cond_1

    .line 26
    .line 27
    invoke-static {v0}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v2, p0, La1/i;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, [Lcd/a;

    .line 34
    .line 35
    aget-object v2, v2, v1

    .line 36
    .line 37
    invoke-virtual {v2}, Lcd/a;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, "\n"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string v0, "SecurityDescriptor:\nNULL"

    .line 57
    .line 58
    :cond_1
    return-object v0

    .line 59
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public u(IJ)V
    .locals 10

    .line 1
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld3/f;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/16 v1, 0xf0

    .line 9
    .line 10
    const-wide/16 v2, -0x1

    .line 11
    .line 12
    if-eq p1, v1, :cond_1a

    .line 13
    .line 14
    const/16 v1, 0xf1

    .line 15
    .line 16
    if-eq p1, v1, :cond_19

    .line 17
    .line 18
    const/16 v1, 0x5031

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const-string v3, " not supported"

    .line 22
    .line 23
    if-eq p1, v1, :cond_17

    .line 24
    .line 25
    const/16 v1, 0x5032

    .line 26
    .line 27
    const-wide/16 v4, 0x1

    .line 28
    .line 29
    if-eq p1, v1, :cond_15

    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x3

    .line 34
    const/4 v8, 0x2

    .line 35
    const/4 v9, 0x1

    .line 36
    sparse-switch p1, :sswitch_data_0

    .line 37
    .line 38
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 40
    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :pswitch_0
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 48
    .line 49
    long-to-int p3, p2

    .line 50
    iput p3, p1, Ld3/e;->E:I

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :pswitch_1
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 58
    .line 59
    long-to-int p3, p2

    .line 60
    iput p3, p1, Ld3/e;->D:I

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :pswitch_2
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 68
    .line 69
    iput-boolean v9, p1, Ld3/e;->z:Z

    .line 70
    .line 71
    long-to-int p1, p2

    .line 72
    invoke-static {p1}, Lr1/g;->g(I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eq p1, v1, :cond_1b

    .line 77
    .line 78
    iget-object p2, v0, Ld3/f;->y:Ld3/e;

    .line 79
    .line 80
    iput p1, p2, Ld3/e;->A:I

    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :pswitch_3
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 85
    .line 86
    .line 87
    long-to-int p1, p2

    .line 88
    invoke-static {p1}, Lr1/g;->h(I)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eq p1, v1, :cond_1b

    .line 93
    .line 94
    iget-object p2, v0, Ld3/f;->y:Ld3/e;

    .line 95
    .line 96
    iput p1, p2, Ld3/e;->B:I

    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :pswitch_4
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 101
    .line 102
    .line 103
    long-to-int p1, p2

    .line 104
    if-eq p1, v9, :cond_1

    .line 105
    .line 106
    if-eq p1, v8, :cond_0

    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :cond_0
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 111
    .line 112
    iput v9, p1, Ld3/e;->C:I

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :cond_1
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 117
    .line 118
    iput v8, p1, Ld3/e;->C:I

    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :sswitch_0
    iput-wide p2, v0, Ld3/f;->t:J

    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :sswitch_1
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 127
    .line 128
    .line 129
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 130
    .line 131
    long-to-int p3, p2

    .line 132
    iput p3, p1, Ld3/e;->f:I

    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :sswitch_2
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 137
    .line 138
    .line 139
    long-to-int p1, p2

    .line 140
    if-eqz p1, :cond_5

    .line 141
    .line 142
    if-eq p1, v9, :cond_4

    .line 143
    .line 144
    if-eq p1, v8, :cond_3

    .line 145
    .line 146
    if-eq p1, v7, :cond_2

    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_2
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 151
    .line 152
    iput v7, p1, Ld3/e;->t:I

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_3
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 157
    .line 158
    iput v8, p1, Ld3/e;->t:I

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_4
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 163
    .line 164
    iput v9, p1, Ld3/e;->t:I

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_5
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 169
    .line 170
    iput v6, p1, Ld3/e;->t:I

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :sswitch_3
    iput-wide p2, v0, Ld3/f;->Z:J

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :sswitch_4
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 179
    .line 180
    .line 181
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 182
    .line 183
    long-to-int p3, p2

    .line 184
    iput p3, p1, Ld3/e;->R:I

    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :sswitch_5
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 189
    .line 190
    .line 191
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 192
    .line 193
    iput-wide p2, p1, Ld3/e;->U:J

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :sswitch_6
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 198
    .line 199
    .line 200
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 201
    .line 202
    iput-wide p2, p1, Ld3/e;->T:J

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :sswitch_7
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 207
    .line 208
    .line 209
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 210
    .line 211
    long-to-int p3, p2

    .line 212
    iput p3, p1, Ld3/e;->g:I

    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :sswitch_8
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 217
    .line 218
    .line 219
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 220
    .line 221
    iput-boolean v9, p1, Ld3/e;->z:Z

    .line 222
    .line 223
    long-to-int p3, p2

    .line 224
    iput p3, p1, Ld3/e;->p:I

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :sswitch_9
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 229
    .line 230
    .line 231
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 232
    .line 233
    cmp-long v0, p2, v4

    .line 234
    .line 235
    if-nez v0, :cond_6

    .line 236
    .line 237
    const/4 v6, 0x1

    .line 238
    :cond_6
    iput-boolean v6, p1, Ld3/e;->X:Z

    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :sswitch_a
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 243
    .line 244
    .line 245
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 246
    .line 247
    long-to-int p3, p2

    .line 248
    iput p3, p1, Ld3/e;->r:I

    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :sswitch_b
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 253
    .line 254
    .line 255
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 256
    .line 257
    long-to-int p3, p2

    .line 258
    iput p3, p1, Ld3/e;->s:I

    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :sswitch_c
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 263
    .line 264
    .line 265
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 266
    .line 267
    long-to-int p3, p2

    .line 268
    iput p3, p1, Ld3/e;->q:I

    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :sswitch_d
    long-to-int p3, p2

    .line 273
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 274
    .line 275
    .line 276
    if-eqz p3, :cond_a

    .line 277
    .line 278
    if-eq p3, v9, :cond_9

    .line 279
    .line 280
    if-eq p3, v7, :cond_8

    .line 281
    .line 282
    const/16 p1, 0xf

    .line 283
    .line 284
    if-eq p3, p1, :cond_7

    .line 285
    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :cond_7
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 289
    .line 290
    iput v7, p1, Ld3/e;->y:I

    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :cond_8
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 295
    .line 296
    iput v9, p1, Ld3/e;->y:I

    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :cond_9
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 301
    .line 302
    iput v8, p1, Ld3/e;->y:I

    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :cond_a
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 307
    .line 308
    iput v6, p1, Ld3/e;->y:I

    .line 309
    .line 310
    goto/16 :goto_0

    .line 311
    .line 312
    :sswitch_e
    iget-wide v1, v0, Ld3/f;->s:J

    .line 313
    .line 314
    add-long/2addr p2, v1

    .line 315
    iput-wide p2, v0, Ld3/f;->B:J

    .line 316
    .line 317
    goto/16 :goto_0

    .line 318
    .line 319
    :sswitch_f
    cmp-long p1, p2, v4

    .line 320
    .line 321
    if-nez p1, :cond_b

    .line 322
    .line 323
    goto/16 :goto_0

    .line 324
    .line 325
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    const-string v0, "AESSettingsCipherMode "

    .line 328
    .line 329
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    invoke-static {v2, p1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    throw p1

    .line 347
    :sswitch_10
    const-wide/16 v0, 0x5

    .line 348
    .line 349
    cmp-long p1, p2, v0

    .line 350
    .line 351
    if-nez p1, :cond_c

    .line 352
    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    const-string v0, "ContentEncAlgo "

    .line 358
    .line 359
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-static {v2, p1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    throw p1

    .line 377
    :sswitch_11
    cmp-long p1, p2, v4

    .line 378
    .line 379
    if-nez p1, :cond_d

    .line 380
    .line 381
    goto/16 :goto_0

    .line 382
    .line 383
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    const-string v0, "EBMLReadVersion "

    .line 386
    .line 387
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-static {v2, p1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    throw p1

    .line 405
    :sswitch_12
    cmp-long p1, p2, v4

    .line 406
    .line 407
    if-ltz p1, :cond_e

    .line 408
    .line 409
    const-wide/16 v0, 0x2

    .line 410
    .line 411
    cmp-long p1, p2, v0

    .line 412
    .line 413
    if-gtz p1, :cond_e

    .line 414
    .line 415
    goto/16 :goto_0

    .line 416
    .line 417
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    const-string v0, "DocTypeReadVersion "

    .line 420
    .line 421
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    invoke-static {v2, p1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    throw p1

    .line 439
    :sswitch_13
    const-wide/16 v0, 0x3

    .line 440
    .line 441
    cmp-long p1, p2, v0

    .line 442
    .line 443
    if-nez p1, :cond_f

    .line 444
    .line 445
    goto/16 :goto_0

    .line 446
    .line 447
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    const-string v0, "ContentCompAlgo "

    .line 450
    .line 451
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    invoke-static {v2, p1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    throw p1

    .line 469
    :sswitch_14
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 470
    .line 471
    .line 472
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 473
    .line 474
    long-to-int p3, p2

    .line 475
    iput p3, p1, Ld3/e;->h:I

    .line 476
    .line 477
    goto/16 :goto_0

    .line 478
    .line 479
    :sswitch_15
    iput-boolean v9, v0, Ld3/f;->Y:Z

    .line 480
    .line 481
    goto/16 :goto_0

    .line 482
    .line 483
    :sswitch_16
    iget-boolean v1, v0, Ld3/f;->z:Z

    .line 484
    .line 485
    if-nez v1, :cond_1b

    .line 486
    .line 487
    invoke-virtual {v0, p1}, Ld3/f;->h(I)V

    .line 488
    .line 489
    .line 490
    long-to-int p1, p2

    .line 491
    iput p1, v0, Ld3/f;->F:I

    .line 492
    .line 493
    goto/16 :goto_0

    .line 494
    .line 495
    :sswitch_17
    long-to-int p1, p2

    .line 496
    iput p1, v0, Ld3/f;->X:I

    .line 497
    .line 498
    goto/16 :goto_0

    .line 499
    .line 500
    :sswitch_18
    invoke-virtual {v0, p2, p3}, Ld3/f;->o(J)J

    .line 501
    .line 502
    .line 503
    move-result-wide p1

    .line 504
    iput-wide p1, v0, Ld3/f;->M:J

    .line 505
    .line 506
    goto/16 :goto_0

    .line 507
    .line 508
    :sswitch_19
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 509
    .line 510
    .line 511
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 512
    .line 513
    long-to-int p3, p2

    .line 514
    iput p3, p1, Ld3/e;->d:I

    .line 515
    .line 516
    goto/16 :goto_0

    .line 517
    .line 518
    :sswitch_1a
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 519
    .line 520
    .line 521
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 522
    .line 523
    long-to-int p3, p2

    .line 524
    iput p3, p1, Ld3/e;->o:I

    .line 525
    .line 526
    goto/16 :goto_0

    .line 527
    .line 528
    :sswitch_1b
    iget-boolean v1, v0, Ld3/f;->z:Z

    .line 529
    .line 530
    if-nez v1, :cond_1b

    .line 531
    .line 532
    invoke-virtual {v0, p1}, Ld3/f;->h(I)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0, p2, p3}, Ld3/f;->o(J)J

    .line 536
    .line 537
    .line 538
    move-result-wide p1

    .line 539
    iput-wide p1, v0, Ld3/f;->E:J

    .line 540
    .line 541
    goto/16 :goto_0

    .line 542
    .line 543
    :sswitch_1c
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 544
    .line 545
    .line 546
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 547
    .line 548
    long-to-int p3, p2

    .line 549
    iput p3, p1, Ld3/e;->n:I

    .line 550
    .line 551
    goto/16 :goto_0

    .line 552
    .line 553
    :sswitch_1d
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 554
    .line 555
    .line 556
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 557
    .line 558
    long-to-int p3, p2

    .line 559
    iput p3, p1, Ld3/e;->Q:I

    .line 560
    .line 561
    goto/16 :goto_0

    .line 562
    .line 563
    :sswitch_1e
    invoke-virtual {v0, p2, p3}, Ld3/f;->o(J)J

    .line 564
    .line 565
    .line 566
    move-result-wide p1

    .line 567
    iput-wide p1, v0, Ld3/f;->Q:J

    .line 568
    .line 569
    goto/16 :goto_0

    .line 570
    .line 571
    :sswitch_1f
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 572
    .line 573
    .line 574
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 575
    .line 576
    cmp-long v0, p2, v4

    .line 577
    .line 578
    if-nez v0, :cond_10

    .line 579
    .line 580
    const/4 v6, 0x1

    .line 581
    :cond_10
    iput-boolean v6, p1, Ld3/e;->Y:Z

    .line 582
    .line 583
    goto/16 :goto_0

    .line 584
    .line 585
    :sswitch_20
    long-to-int p3, p2

    .line 586
    if-eq p3, v9, :cond_14

    .line 587
    .line 588
    if-eq p3, v8, :cond_13

    .line 589
    .line 590
    const/16 p2, 0x11

    .line 591
    .line 592
    if-eq p3, p2, :cond_12

    .line 593
    .line 594
    const/16 p2, 0x21

    .line 595
    .line 596
    if-eq p3, p2, :cond_11

    .line 597
    .line 598
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 599
    .line 600
    .line 601
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 602
    .line 603
    iput v1, p1, Ld3/e;->e:I

    .line 604
    .line 605
    goto/16 :goto_0

    .line 606
    .line 607
    :cond_11
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 608
    .line 609
    .line 610
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 611
    .line 612
    const/4 p2, 0x5

    .line 613
    iput p2, p1, Ld3/e;->e:I

    .line 614
    .line 615
    goto/16 :goto_0

    .line 616
    .line 617
    :cond_12
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 618
    .line 619
    .line 620
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 621
    .line 622
    iput v7, p1, Ld3/e;->e:I

    .line 623
    .line 624
    goto :goto_0

    .line 625
    :cond_13
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 626
    .line 627
    .line 628
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 629
    .line 630
    iput v9, p1, Ld3/e;->e:I

    .line 631
    .line 632
    goto :goto_0

    .line 633
    :cond_14
    invoke-virtual {v0, p1}, Ld3/f;->i(I)V

    .line 634
    .line 635
    .line 636
    iget-object p1, v0, Ld3/f;->y:Ld3/e;

    .line 637
    .line 638
    iput v8, p1, Ld3/e;->e:I

    .line 639
    .line 640
    goto :goto_0

    .line 641
    :cond_15
    cmp-long p1, p2, v4

    .line 642
    .line 643
    if-nez p1, :cond_16

    .line 644
    .line 645
    goto :goto_0

    .line 646
    :cond_16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 647
    .line 648
    const-string v0, "ContentEncodingScope "

    .line 649
    .line 650
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object p1

    .line 663
    invoke-static {v2, p1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 664
    .line 665
    .line 666
    move-result-object p1

    .line 667
    throw p1

    .line 668
    :cond_17
    const-wide/16 v0, 0x0

    .line 669
    .line 670
    cmp-long p1, p2, v0

    .line 671
    .line 672
    if-nez p1, :cond_18

    .line 673
    .line 674
    goto :goto_0

    .line 675
    :cond_18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 676
    .line 677
    const-string v0, "ContentEncodingOrder "

    .line 678
    .line 679
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object p1

    .line 692
    invoke-static {v2, p1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 693
    .line 694
    .line 695
    move-result-object p1

    .line 696
    throw p1

    .line 697
    :cond_19
    iget-boolean v1, v0, Ld3/f;->z:Z

    .line 698
    .line 699
    if-nez v1, :cond_1b

    .line 700
    .line 701
    invoke-virtual {v0, p1}, Ld3/f;->h(I)V

    .line 702
    .line 703
    .line 704
    iget-wide v4, v0, Ld3/f;->G:J

    .line 705
    .line 706
    cmp-long p1, v4, v2

    .line 707
    .line 708
    if-nez p1, :cond_1b

    .line 709
    .line 710
    iput-wide p2, v0, Ld3/f;->G:J

    .line 711
    .line 712
    goto :goto_0

    .line 713
    :cond_1a
    iget-boolean v1, v0, Ld3/f;->z:Z

    .line 714
    .line 715
    if-nez v1, :cond_1b

    .line 716
    .line 717
    invoke-virtual {v0, p1}, Ld3/f;->h(I)V

    .line 718
    .line 719
    .line 720
    iget-wide v4, v0, Ld3/f;->H:J

    .line 721
    .line 722
    cmp-long p1, v4, v2

    .line 723
    .line 724
    if-nez p1, :cond_1b

    .line 725
    .line 726
    iput-wide p2, v0, Ld3/f;->H:J

    .line 727
    .line 728
    :cond_1b
    :goto_0
    return-void

    .line 729
    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_20
        0x88 -> :sswitch_1f
        0x9b -> :sswitch_1e
        0x9f -> :sswitch_1d
        0xb0 -> :sswitch_1c
        0xb3 -> :sswitch_1b
        0xba -> :sswitch_1a
        0xd7 -> :sswitch_19
        0xe7 -> :sswitch_18
        0xee -> :sswitch_17
        0xf7 -> :sswitch_16
        0xfb -> :sswitch_15
        0x41e7 -> :sswitch_14
        0x4254 -> :sswitch_13
        0x4285 -> :sswitch_12
        0x42f7 -> :sswitch_11
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_f
        0x53ac -> :sswitch_e
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_c
        0x54b2 -> :sswitch_b
        0x54ba -> :sswitch_a
        0x55aa -> :sswitch_9
        0x55b2 -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public v()Z
    .locals 4

    .line 1
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "getTetheredIfaces"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, [Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    return v0
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/emoji2/text/l;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/emoji2/text/l;->e()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public y(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    const-string v0, "Audio sink error"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La1/i;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, La2/q1;

    .line 9
    .line 10
    iget-object v0, v0, La2/q1;->A1:La2/j0;

    .line 11
    .line 12
    iget-object v1, v0, La2/j0;->b:Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v2, La2/a0;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-direct {v2, v0, p1, v3}, La2/a0;-><init>(La2/j0;Ljava/lang/Exception;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public z(Ljava/lang/CharSequence;IIZ)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    return-object p1
.end method
