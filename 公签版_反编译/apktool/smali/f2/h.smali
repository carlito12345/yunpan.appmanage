.class public final synthetic Lf2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/d0;


# instance fields
.field public final synthetic a:Lf2/k;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lf2/k;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/h;->a:Lf2/k;

    iput-object p2, p0, Lf2/h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lf2/a;Lr1/q0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/h;->a:Lf2/k;

    .line 2
    .line 3
    iget-object v1, p0, Lf2/h;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lf2/k;->v(Ljava/lang/Object;Lf2/a;Lr1/q0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
