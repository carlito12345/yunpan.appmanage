.class public final Lz7/r;
.super Lz7/p;
.source "SourceFile"


# static fields
.field public static final a:Lz7/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lz7/r;

    .line 2
    .line 3
    invoke-direct {v0}, Lz7/r;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz7/r;->a:Lz7/r;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz7/p;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lz7/p;
    .locals 1

    .line 1
    sget-object v0, Lz7/r;->a:Lz7/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lz7/r;

    .line 2
    .line 3
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    const-class v0, Lz7/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
