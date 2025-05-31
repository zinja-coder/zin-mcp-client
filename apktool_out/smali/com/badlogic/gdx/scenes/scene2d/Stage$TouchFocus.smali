.class public final Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
.super Ljava/lang/Object;
.source "Stage.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/Stage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TouchFocus"
.end annotation


# instance fields
.field button:I

.field listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

.field listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field pointer:I

.field target:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 823
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 824
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 825
    return-void
.end method
