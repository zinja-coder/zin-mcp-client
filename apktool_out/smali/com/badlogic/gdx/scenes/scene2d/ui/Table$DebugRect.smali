.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;
.super Lcom/badlogic/gdx/math/Rectangle;
.source "Table.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugRect"
.end annotation


# static fields
.field static pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field color:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1202
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->pool:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1201
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    return-void
.end method
