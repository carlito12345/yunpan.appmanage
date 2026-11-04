.class public final Lu7/d0;
.super Lu7/a0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lu7/a0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lu7/a0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lu7/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu7/a0;->b(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final g()Lu7/y0;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lu7/a0;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lu7/a0;->a:[Ljava/lang/Object;

    .line 5
    .line 6
    iget v1, p0, Lu7/a0;->b:I

    .line 7
    .line 8
    invoke-static {v1, v0}, Lu7/g0;->i(I[Ljava/lang/Object;)Lu7/y0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
