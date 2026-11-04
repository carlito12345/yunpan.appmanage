.class public final Lw3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lw3/a;->a:I

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v1, "dalvik.system.DexPathList$Element"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 15
    :try_start_0
    new-instance v2, Lw3/a;

    invoke-direct {v2, v1, v0}, Lw3/a;-><init>(Ljava/lang/Class;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 16
    :catch_0
    :try_start_1
    new-instance v2, Lw3/a;

    const/4 v0, 0x1

    invoke-direct {v2, v1, v0}, Lw3/a;-><init>(Ljava/lang/Class;I)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 17
    :catch_1
    new-instance v2, Lw3/a;

    const/4 v0, 0x2

    invoke-direct {v2, v1, v0}, Lw3/a;-><init>(Ljava/lang/Class;I)V

    .line 18
    :goto_0
    iput-object v2, p0, Lw3/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 6

    const/4 v0, 0x2

    const-class v1, Ldalvik/system/DexFile;

    const-class v2, Ljava/io/File;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    iput p2, p0, Lw3/a;->a:I

    packed-switch p2, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p2, v3, [Ljava/lang/Class;

    aput-object v2, p2, v4

    const-class v2, Ljava/util/zip/ZipFile;

    aput-object v2, p2, v5

    aput-object v1, p2, v0

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lw3/a;->b:Ljava/lang/Object;

    .line 4
    invoke-virtual {p1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-void

    .line 5
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x4

    .line 6
    new-array p2, p2, [Ljava/lang/Class;

    aput-object v2, p2, v4

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, p2, v5

    aput-object v2, p2, v0

    aput-object v1, p2, v3

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lw3/a;->b:Ljava/lang/Object;

    .line 8
    invoke-virtual {p1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-void

    .line 9
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-array p2, v3, [Ljava/lang/Class;

    aput-object v2, p2, v4

    aput-object v2, p2, v5

    aput-object v1, p2, v0

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lw3/a;->b:Ljava/lang/Object;

    .line 12
    invoke-virtual {p1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
