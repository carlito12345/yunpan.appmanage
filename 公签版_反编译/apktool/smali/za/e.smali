.class public final Lza/e;
.super Lab/a;
.source "SourceFile"


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Lza/a;

.field public final synthetic f:Lmc/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Lza/a;Lmc/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lza/e;->c:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lza/e;->d:Ljava/util/ArrayList;

    .line 4
    .line 5
    iput-object p3, p0, Lza/e;->e:Lza/a;

    .line 6
    .line 7
    iput-object p4, p0, Lza/e;->f:Lmc/b;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lab/a;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final cryptoGetTextPassword()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lza/e;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :cond_0
    return-object v0
.end method

.method public final getItemInformation(ILnet/sf/sevenzipjbinding/impl/OutItemFactory;)Lnet/sf/sevenzipjbinding/IOutItemBase;
    .locals 3

    .line 1
    invoke-virtual {p2}, Lnet/sf/sevenzipjbinding/impl/OutItemFactory;->createOutItem()Lnet/sf/sevenzipjbinding/IOutItemBase;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lnet/sf/sevenzipjbinding/IOutItem7z;

    .line 6
    .line 7
    iget-object v0, p0, Lza/e;->d:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lx9/w3;

    .line 14
    .line 15
    iget-boolean v1, v1, Lx9/w3;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-interface {p2, v1}, Lnet/sf/sevenzipjbinding/IOutItem7z;->setPropertyIsDir(Ljava/lang/Boolean;)V

    .line 22
    .line 23
    .line 24
    const v1, -0x7e127ff0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lx9/w3;

    .line 33
    .line 34
    iget-wide v1, v1, Lx9/w3;->d:J

    .line 35
    .line 36
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {p2, v1}, Lnet/sf/sevenzipjbinding/IOutItemBase;->setDataSize(Ljava/lang/Long;)V

    .line 41
    .line 42
    .line 43
    const v1, -0x7e5b8000

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lx9/w3;

    .line 51
    .line 52
    iget-object p1, p1, Lx9/w3;->o:Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {p2, p1}, Lnet/sf/sevenzipjbinding/IOutItem7z;->setPropertyPath(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p2, p1}, Lnet/sf/sevenzipjbinding/IOutItem7z;->setPropertyAttributes(Ljava/lang/Integer;)V

    .line 62
    .line 63
    .line 64
    return-object p2
.end method

.method public final getStream(I)Lnet/sf/sevenzipjbinding/ISequentialInStream;
    .locals 4

    .line 1
    iget-object v0, p0, Lza/e;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lx9/w3;

    .line 8
    .line 9
    iget-boolean v1, v1, Lx9/w3;->c:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :cond_0
    :try_start_0
    new-instance v1, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileInStream;

    .line 16
    .line 17
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 18
    .line 19
    new-instance v3, Ljava/io/File;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lx9/w3;

    .line 26
    .line 27
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "r"

    .line 33
    .line 34
    invoke-direct {v2, v3, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileInStream;-><init>(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 43
    .line 44
    invoke-direct {v0, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public final setCompleted(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lza/e;->e:Lza/a;

    .line 2
    .line 3
    iput-wide p1, v0, Lza/a;->b:J

    .line 4
    .line 5
    iget p1, p0, Lab/a;->b:I

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    iput p1, p0, Lab/a;->b:I

    .line 10
    .line 11
    iget-object p2, p0, Lza/e;->f:Lmc/b;

    .line 12
    .line 13
    rem-int/lit8 p1, p1, 0xa

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-wide v1, v0, Lza/a;->b:J

    .line 23
    .line 24
    long-to-double v1, v1

    .line 25
    invoke-static {v1, v2}, Lif/a;->D0(D)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, "/"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-wide v1, v0, Lza/a;->a:J

    .line 38
    .line 39
    long-to-double v1, v1

    .line 40
    invoke-static {v1, v2}, Lif/a;->D0(D)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, "  "

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 53
    .line 54
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 55
    .line 56
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 57
    .line 58
    iget-wide v2, v0, Lza/a;->b:J

    .line 59
    .line 60
    long-to-double v2, v2

    .line 61
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 62
    .line 63
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 64
    .line 65
    .line 66
    mul-double v2, v2, v4

    .line 67
    .line 68
    iget-wide v4, v0, Lza/a;->a:J

    .line 69
    .line 70
    long-to-double v4, v4

    .line 71
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 72
    .line 73
    .line 74
    div-double/2addr v2, v4

    .line 75
    const-string v4, "%"

    .line 76
    .line 77
    invoke-static {v1, v2, v3, p1, v4}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, v0, Lza/a;->c:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void
.end method

.method public final setOperationResult(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setTotal(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lza/e;->e:Lza/a;

    .line 2
    .line 3
    iput-wide p1, v0, Lza/a;->a:J

    .line 4
    .line 5
    return-void
.end method
