.class public final Lt4/b;
.super Ld/b;
.source "SourceFile"


# static fields
.field public static final d:Lt4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lt4/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lt4/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt4/b;->d:Lt4/b;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final O(Ls4/l;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Ld/b;->e(Ls4/l;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final P(Ls4/l;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Ld/b;->c(Ls4/l;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final Q(Ls4/h;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ls4/v;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p1, Ls4/h;->d:Lw4/l;

    .line 6
    .line 7
    iget-object p1, p1, Lb5/c;->b:[Ljava/lang/Object;

    .line 8
    .line 9
    array-length p1, p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public final i()I
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    return v0
.end method

.method public final z0(Lb5/b;Ls4/l;)V
    .locals 2

    .line 1
    move-object v0, p2

    .line 2
    check-cast v0, Ls4/v;

    .line 3
    .line 4
    invoke-virtual {v0}, Ls4/v;->m()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p2, v1}, Ld/b;->Y(Ls4/h;I)S

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    int-to-short v1, v0

    .line 14
    shr-int/lit8 v0, v0, 0x10

    .line 15
    .line 16
    int-to-short v0, v0

    .line 17
    invoke-virtual {p1, p2}, Lb5/b;->k(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lb5/b;->k(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lb5/b;->k(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
