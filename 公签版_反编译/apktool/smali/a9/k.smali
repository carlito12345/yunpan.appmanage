.class public final La9/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La9/j;


# instance fields
.field public final a:La9/j;

.field public final b:Ljava/util/Vector;


# direct methods
.method public constructor <init>(La9/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Vector;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, La9/k;->b:Ljava/util/Vector;

    .line 10
    .line 11
    iput-object p1, p0, La9/k;->a:La9/j;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a([B)Z
    .locals 1

    .line 1
    iget-object v0, p0, La9/k;->a:La9/j;

    .line 2
    .line 3
    invoke-interface {v0, p1}, La9/j;->a([B)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
