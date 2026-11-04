.class public final Lch/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ldh/c;

.field public final b:Lhh/a;


# direct methods
.method public constructor <init>(Ldh/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhh/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lhh/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lch/c;->b:Lhh/a;

    .line 10
    .line 11
    iput-object p1, p0, Lch/c;->a:Ldh/c;

    .line 12
    .line 13
    return-void
.end method
