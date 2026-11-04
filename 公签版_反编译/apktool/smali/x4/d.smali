.class public final Lx4/d;
.super Lx4/l;
.source "SourceFile"


# static fields
.field public static final b:Lx4/d;

.field public static final c:Lx4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx4/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lx4/d;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lx4/d;->b:Lx4/d;

    .line 8
    .line 9
    new-instance v0, Lx4/d;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lx4/d;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lx4/d;->c:Lx4/d;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lx4/l;-><init>(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lx4/l;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "false"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "true"

    .line 9
    .line 10
    :goto_0
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "boolean"

    .line 2
    .line 3
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lx4/l;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "boolean{false}"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "boolean{true}"

    .line 9
    .line 10
    :goto_0
    return-object v0
.end method
