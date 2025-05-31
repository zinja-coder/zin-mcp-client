.class Lcom/badlogic/gdx/math/Bresenham2$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "Bresenham2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Bresenham2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool",
        "<",
        "Lcom/badlogic/gdx/math/GridPoint2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/math/Bresenham2;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/math/Bresenham2;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/badlogic/gdx/math/Bresenham2$1;->this$0:Lcom/badlogic/gdx/math/Bresenham2;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/math/GridPoint2;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/badlogic/gdx/math/GridPoint2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/GridPoint2;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Bresenham2$1;->newObject()Lcom/badlogic/gdx/math/GridPoint2;

    move-result-object v0

    return-object v0
.end method
