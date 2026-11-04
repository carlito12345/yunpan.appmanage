.class public final Loa/g;
.super Ljava/lang/Process;
.source "SourceFile"


# instance fields
.field public final a:Loa/b;

.field public b:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

.field public c:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

.field public d:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;


# direct methods
.method public constructor <init>(Loa/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Loa/g;->a:Loa/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Loa/g;->a:Loa/b;

    .line 2
    .line 3
    invoke-interface {v0}, Loa/b;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    return-void
.end method

.method public final exitValue()I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Loa/g;->isAlive()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Loa/g;->a:Loa/b;

    .line 9
    .line 10
    invoke-interface {v1}, Loa/b;->g()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eq v1, v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/IllegalThreadStateException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw v1

    .line 23
    :cond_1
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/IllegalThreadStateException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :catch_0
    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Loa/g;->d:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 6
    .line 7
    iget-object v1, p0, Loa/g;->a:Loa/b;

    .line 8
    .line 9
    invoke-interface {v1}, Loa/b;->a()Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Loa/g;->d:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    const/4 v0, 0x0

    .line 20
    return-object v0

    .line 21
    :cond_0
    :goto_0
    iget-object v0, p0, Loa/g;->d:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 22
    .line 23
    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Loa/g;->c:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 6
    .line 7
    iget-object v1, p0, Loa/g;->a:Loa/b;

    .line 8
    .line 9
    invoke-interface {v1}, Loa/b;->getInputStream()Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Loa/g;->c:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    const/4 v0, 0x0

    .line 20
    return-object v0

    .line 21
    :cond_0
    :goto_0
    iget-object v0, p0, Loa/g;->c:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 22
    .line 23
    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Loa/g;->b:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 6
    .line 7
    iget-object v1, p0, Loa/g;->a:Loa/b;

    .line 8
    .line 9
    invoke-interface {v1}, Loa/b;->getOutputStream()Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Loa/g;->b:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    const/4 v0, 0x0

    .line 20
    return-object v0

    .line 21
    :cond_0
    :goto_0
    iget-object v0, p0, Loa/g;->b:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 22
    .line 23
    return-object v0
.end method

.method public final isAlive()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Loa/g;->a:Loa/b;

    .line 2
    .line 3
    invoke-interface {v0}, Loa/b;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return v0

    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public final waitFor()I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Loa/g;->a:Loa/b;

    .line 3
    .line 4
    invoke-interface {v1}, Loa/b;->d()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eq v1, v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    new-instance v1, Ljava/lang/InterruptedException;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    return v0
.end method
