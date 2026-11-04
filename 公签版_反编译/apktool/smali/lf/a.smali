.class public abstract Llf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:S

.field public final b:S

.field public final c:I


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    int-to-short p1, p1

    .line 5
    iput-short p1, p0, Llf/a;->a:S

    .line 6
    .line 7
    int-to-short p1, p2

    .line 8
    iput-short p1, p0, Llf/a;->b:S

    .line 9
    .line 10
    invoke-static {p3, p4}, Lcom/bumptech/glide/c;->r(J)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Llf/a;->c:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget v0, p0, Llf/a;->c:I

    .line 2
    .line 3
    iget-short v1, p0, Llf/a;->b:S

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method
