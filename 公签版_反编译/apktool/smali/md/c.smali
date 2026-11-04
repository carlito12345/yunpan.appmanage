.class public final Lmd/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvc/g;


# instance fields
.field public a:I

.field public final b:[B

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lmd/c;->b:[B

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final i(II[B)I
    .locals 3

    .line 1
    invoke-static {p1, p3}, Lrd/a;->b(I[B)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iput p2, p0, Lmd/c;->a:I

    .line 6
    .line 7
    add-int/lit8 p2, p1, 0x4

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    iget-object v2, p0, Lmd/c;->b:[B

    .line 13
    .line 14
    invoke-static {p3, p2, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 p2, p1, 0x14

    .line 18
    .line 19
    invoke-static {p2, p3}, Lrd/a;->a(I[B)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    iput p2, p0, Lmd/c;->c:I

    .line 24
    .line 25
    add-int/lit8 p2, p1, 0x16

    .line 26
    .line 27
    invoke-static {p2, p3}, Lrd/a;->a(I[B)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    iput p2, p0, Lmd/c;->d:I

    .line 32
    .line 33
    add-int/lit8 p2, p1, 0x18

    .line 34
    .line 35
    sub-int/2addr p2, p1

    .line 36
    return p2
.end method
