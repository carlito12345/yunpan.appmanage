.class public Lcom/gj/server/GjBinderProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GjBinderProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private handleGetBinder(Landroid/os/Bundle;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    sget-object v0, Lfa/a;->a:Lfa/b;

    .line 2
    .line 3
    iget-object v0, v0, Lfa/b;->a:Landroid/os/IBinder;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lcom/gj/server/BinderWrapper;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/gj/server/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "binder"

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method private handleSendBinder(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "binder"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/gj/server/BinderWrapper;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v1, p1, Lcom/gj/server/BinderWrapper;->binder:Landroid/os/IBinder;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v2, Lfa/a;->a:Lfa/b;

    .line 16
    .line 17
    iput-object v1, v2, Lfa/b;->a:Landroid/os/IBinder;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v2, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 24
    .line 25
    new-instance v1, Lcom/gj/server/BinderWrapper;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/gj/server/BinderWrapper;->binder:Landroid/os/IBinder;

    .line 28
    .line 29
    invoke-direct {v1, p1}, Lcom/gj/server/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 1
    const/4 p2, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return-object p2

    .line 5
    :cond_0
    const-class v0, Lcom/gj/server/BinderWrapper;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string v1, "sendBinder"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    const-string p3, "getBinder"

    .line 31
    .line 32
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-direct {p0, v0}, Lcom/gj/server/GjBinderProvider;->handleGetBinder(Landroid/os/Bundle;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    return-object p2

    .line 46
    :cond_2
    invoke-direct {p0, p3, v0}, Lcom/gj/server/GjBinderProvider;->handleSendBinder(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_0
    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
