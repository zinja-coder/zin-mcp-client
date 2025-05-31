.class Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidDisplayMode;
.super Lcom/badlogic/gdx/Graphics$DisplayMode;
.source "AndroidGraphics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/AndroidGraphics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidDisplayMode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidGraphics;IIII)V
    .locals 0
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "refreshRate"    # I
    .param p5, "bitsPerPixel"    # I

    .prologue
    .line 556
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidDisplayMode;->this$0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    .line 557
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/Graphics$DisplayMode;-><init>(IIII)V

    .line 558
    return-void
.end method
