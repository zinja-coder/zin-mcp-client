.class Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
.super Ljava/lang/Object;
.source "AndroidInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/AndroidInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TouchEvent"
.end annotation


# static fields
.field static final TOUCH_DOWN:I = 0x0

.field static final TOUCH_DRAGGED:I = 0x2

.field static final TOUCH_MOVED:I = 0x4

.field static final TOUCH_SCROLLED:I = 0x3

.field static final TOUCH_UP:I = 0x1


# instance fields
.field button:I

.field pointer:I

.field scrollAmount:I

.field timeStamp:J

.field type:I

.field x:I

.field y:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
